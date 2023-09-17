using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Vuelos : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            StreamReader arch = new StreamReader(this.Server.MapPath(".") +
           "/vuelos.txt");
            this.Label1.Text = arch.ReadToEnd();
            arch.Close();
        }


    
    }
}
