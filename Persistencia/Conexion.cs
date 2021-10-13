using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;
using System.Data;

namespace Persistencia
{
    public abstract class Conexion
    {
        public MySqlConnection conex { get; set; }

        private bool Conectar()
        {
            try
            {
                conex.Open();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public MySqlConnection ConexionMySql()
        {
            try
            {
                conex.Open();
            }
            catch (Exception ex)
            {
                return null;
            }

            return conex;
        }

        private void Desconectar()
        {
            conex.Close();
        }

        public void EjecutarTransaccion(MySqlConnection mySqlConnection, List<string> Sentencia)
        {
            MySqlTransaction transa = mySqlConnection.BeginTransaction();
            MySqlCommand mySqlCommand;

            string err = string.Empty;

            try
            {
                if (Sentencia.Count > 0)
                {
                    foreach (var query in Sentencia)
                    {
                        err = query;
                        mySqlCommand = new MySqlCommand(query, mySqlConnection);
                        mySqlCommand.Transaction = transa;
                        mySqlCommand.ExecuteNonQuery();
                    }
                    transa.Commit();
                }
                else
                {
                    throw new Exception("No se realizó la transacción. Sin consultas por ejecutar.");
                }
            }
            catch (Exception exc)
            {
                transa.Rollback();
                throw new Exception("No se realizo la transaccion en la Bases de Datos. <p> <b>  " + exc.Message + "  </b> <br>" + err);
            }
            finally
            {
                mySqlConnection.Close();
            }
        }

        public DataTable EjecutarConsulta(string sentencia, List<MySqlParameter> ListaParametros, CommandType TipoComando)
        {

            MySqlDataAdapter adaptador = new MySqlDataAdapter();
            adaptador.SelectCommand = new MySqlCommand(sentencia, conex);
            adaptador.SelectCommand.CommandType = TipoComando;
            adaptador.SelectCommand.CommandTimeout = 600;

            foreach (MySqlParameter parametro in ListaParametros)
            {
                adaptador.SelectCommand.Parameters.Add(parametro);
            }
            DataSet resultado = new DataSet();
            adaptador.Fill(resultado);

            //conex.ClearAllPoolsAsync();

            return resultado.Tables[0];

        }

    }
}
