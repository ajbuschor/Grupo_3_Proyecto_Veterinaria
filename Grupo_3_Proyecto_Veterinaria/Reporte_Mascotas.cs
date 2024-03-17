using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Grupo3Proyecto_Veterinaria
{
    public partial class ReporteMascotas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMascotasGrid();
            }
        }

        private void BindMascotasGrid()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["VeterinariaConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT Nombre_Mascota, Tipo_Mascota, Comida_Favorita FROM Mascotas";

                using (SqlCommand cmd = new SqlCommand(query, connection))
                {
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();

                    connection.Open();
                    da.Fill(dt);
                    connection.Close();

                    GridViewMascotas.DataSource = dt;
                    GridViewMascotas.DataBind();
                }
            }
        }
    }
}
