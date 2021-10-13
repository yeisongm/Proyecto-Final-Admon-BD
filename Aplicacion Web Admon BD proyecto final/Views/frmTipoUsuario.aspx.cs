using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;
using Aplicacion_Web_Admon_BD_proyecto_final.Controller;
using System.Globalization;

namespace Aplicacion_Web_Admon_BD_proyecto_final.Views
{
    public partial class frmTipoUsuario : System.Web.UI.Page
    {
        ctrlTipoUsuario ctrlTUser = new ctrlTipoUsuario();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!X.IsAjaxRequest)
            {
                CargarDatos();
            }
        }

        public void CargarDatos()
        {
            try
            {
                var datos = ctrlTUser.getTipoUsuarios();
                storeTipoUsuario.DataSource = datos;
                storeTipoUsuario.DataBind();
            }
            catch (Exception ex)
            {
                X.MessageBox.Show(new MessageBoxConfig
                {
                    Title = "ADMON BD 3",
                    Message = "Error: <br/>" + ex.Message,
                    Buttons = MessageBox.Button.OK,
                    Icon = MessageBox.Icon.ERROR,
                    Closable = false
                });
            }
        }
        private string PrimeraLetraMayuscula(string Texto)
        {
            return (CultureInfo.InvariantCulture.TextInfo.ToTitleCase(Texto.ToLower()));
        }
        protected Field EventoFiltroGrid_CreateFilterableField(object sender, ColumnBase column, Field defaultField)
        {
            ((TextField)defaultField).Icon = Icon.Magnifier;
            ((TextField)defaultField).EmptyText = $"Buscar por {column.Text.Replace("<b>", "").Replace("</b>", "")}";
            ((TextField)defaultField).ToolTips.Add(new ToolTip
            {
                Html = $"{((TextField)defaultField).EmptyText}"
            });
            return defaultField;
        }

        protected void GuardarTipoUsuario_Event(object sender, DirectEventArgs e)
        {
            string Nombre = txtNombre.Text;
            if (!string.IsNullOrWhiteSpace(Nombre))
            {
                Nombre = PrimeraLetraMayuscula(Nombre).Trim();
                ctrlTUser.setTipoUsuario(Nombre);
                CargarDatos();

                X.MessageBox.Show(new MessageBoxConfig
                {
                    Title = "ADMON BD 3",
                    Message = $"¡El Tipo de Usuario <b>\"{Nombre}\"</b> se ha almacenado exitosamente!",
                    Buttons = MessageBox.Button.OK,
                    Icon = MessageBox.Icon.INFO,
                    Closable = false
                });
            }
            else
            {
                X.MessageBox.Show(new MessageBoxConfig
                {
                    Title = "SIGC",
                    Message = "<b>Advertencia:</b> No se puede guardar un campo te texto con espacios en blanco.</br>Inserte texto e intentelo de nuevo.",
                    Buttons = MessageBox.Button.OK,
                    Icon = MessageBox.Icon.WARNING,
                    Closable = false
                });
                txtNombre.Text = string.Empty;
            }
        }
    }
}