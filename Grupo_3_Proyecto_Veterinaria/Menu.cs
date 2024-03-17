using System;

namespace Veterinaria
{
    public partial class MenuPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            // Si el usuario ha iniciado sesión, no es necesario hacer nada adicional en esta página
        }
    }
}
