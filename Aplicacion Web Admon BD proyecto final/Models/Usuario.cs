using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aplicacion_Web_Admon_BD_proyecto_final.Models
{
    public class Usuario : Persona
    {
        public int IdUsuario { get; set; }
        public string Login { get; set; }
        public string Clave { get; set; }
        public char EstadoCuenta { get; set; }
        public TipoUsuario TipoUsuario { get; set; }

    }

    public class TipoUsuario
    {
        public int IdTipoUsuario { get; set; }
        public string Nombre { get; set; }
        public string Estado { get; set; }
    }
}