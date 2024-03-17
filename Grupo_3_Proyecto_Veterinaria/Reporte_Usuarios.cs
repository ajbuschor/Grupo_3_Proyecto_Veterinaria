using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Veterinaria
{
    public partial class ReporteUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindUsuariosGrid();
            }
        }

        private void BindUsuariosGrid()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["VeterinariaConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Login_Usuario, Clave_Usuario, Nombre_Usuario FROM Usuarios";

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();

                    connection.Open();
                    da.Fill(dt);
                    connection.Close();

                    GridViewUsuarios.DataSource = dt;
                    GridViewUsuarios.DataBind();
                }
            }
        }
    }
}
