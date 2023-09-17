using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string fechaHoraText = fechaHora.Text.Trim(); 

            if (!string.IsNullOrEmpty(fechaHoraText))
            {
                LabelError.Text = "";
                StreamWriter arch = new StreamWriter(this.Server.MapPath(".") + "/vuelos.txt", true);
                arch.WriteLine("<b>Nombre:</b> " + this.TextBox1.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("<b>Fecha y Hora:</b> " + this.fechaHora.Text);
                arch.WriteLine("<br>");
                arch.WriteLine("<hr>");
                arch.Close();
                this.Label5.Text = "Datos Registrados";
            }
            else
            {
                LabelError.Text = "El campo Fecha y Hora es obligatorio.";
            }
        }


    }
}
