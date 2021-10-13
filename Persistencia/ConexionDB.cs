using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Persistencia
{
    public class ConexionDB : Conexion
    {
        public ConexionDB()
        {
            conex = new MySqlConnection(ConfigurationManager.ConnectionStrings["conexionDB"].ConnectionString);
        }
    }
}
