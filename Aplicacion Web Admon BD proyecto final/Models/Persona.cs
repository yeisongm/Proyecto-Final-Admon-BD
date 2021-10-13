using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aplicacion_Web_Admon_BD_proyecto_final.Models
{
    public class Persona
    {
        public int Id { get; set; }
        public int Cedula { get; set; }
        public string Nombres { get; set; }
        public string Apellidos { get; set; }
        public string Correo { get; set; }
    }
}