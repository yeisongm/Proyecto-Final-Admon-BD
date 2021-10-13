using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;
using Aplicacion_Web_Admon_BD_proyecto_final.Controller;

namespace Aplicacion_Web_Admon_BD_proyecto_final.Views
{
    public partial class frmUsuarios : System.Web.UI.Page
    {
        ctrlUsuario ctrlUser = new ctrlUsuario();
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
                var datos = ctrlUser.getUsuarios();
                storeUsuario.DataSource = datos;
                storeUsuario.DataBind();
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

        protected void GuardarUsuario_Event(object sender, DirectEventArgs e)
        {

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
    }
}