using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Persistencia;

namespace Aplicacion_Web_Admon_BD_proyecto_final.Controller
{
    public class ctrlTipoUsuario
    {
        Gestor g = new Gestor();
        public DataTable getTipoUsuarios()
        {
            try
            {
                return g.Consultar("SELECT * FROM sc_administrador_sistema.vw_tipo_usuario;");
            }
            catch (Exception)
            {

                throw;
            }
        }

        public void setTipoUsuario(string nombre)
        {
            try
            {
                List<string> query = new List<string>() {
                    $"CALL sc_administrador_sistema.pa_insert_tipo_usuario('{nombre}');"
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