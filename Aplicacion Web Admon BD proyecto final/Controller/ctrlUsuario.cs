using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Persistencia;

namespace Aplicacion_Web_Admon_BD_proyecto_final.Controller
{
    public class ctrlUsuario
    {
        Gestor g = new Gestor();
        public DataTable getUsuarios()
        {
            try
            {
                return g.Consultar("SELECT * FROM sc_administrador_empresa.vw_usuario_persona;");
            }
            catch (Exception)
            {

                throw;
            }
        }

        public void setUsuario(int cedula, string nombres, string apellidos, string correo, string username, string clave, int idTipoUsuario)
        {
            try
            {
                List<string> query = new List<string>() {
                    $"CALL sc_administrador_empresa.pa_insert_usuario_persona({cedula}, '{nombres}', '{apellidos}', '{correo}', '{username}', '{clave}', {idTipoUsuario});"
                };
                g.Transaccion(query);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}