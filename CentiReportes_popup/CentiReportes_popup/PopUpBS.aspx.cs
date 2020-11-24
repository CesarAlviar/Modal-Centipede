using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentiReportes_popup
{
    public partial class PopUpBS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cerrarModal_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "-1")
            {
                Response.Write("Selecciona una tabla");
            }
            else
            {
                DropDownList2.Visible = true;
                Session["Tabla"] = DropDownList1.SelectedItem.Text;
            }
        }
    }
}