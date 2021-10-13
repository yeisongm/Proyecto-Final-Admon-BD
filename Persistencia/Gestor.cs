using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistencia
{
    public class Gestor
    {
        public DataTable Consultar(string sent)
        {
            try
            {
                ConexionDB db = new ConexionDB();

                List<MySqlParameter> lista = new List<MySqlParameter>();
                DataTable d = db.EjecutarConsulta(sent, lista, System.Data.CommandType.Text);
                return d;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        public void Transaccion(List<string> cadena)
        {
            ConexionDB db = new ConexionDB();
            db.EjecutarTransaccion(db.ConexionMySql(), cadena);
        }
    }
}
