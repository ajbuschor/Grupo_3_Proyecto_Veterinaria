using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Veterinaria
{
    public partial class ReporteControlCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatosCitas();
            }
        }

        protected void CargarDatosCitas()
        {
            // Obtener la cadena de conexión del archivo Web.config
            string connectionString = ConfigurationManager.ConnectionStrings["VeterinariaConnectionString"].ConnectionString;

            // Consulta SQL para obtener las citas ordenadas por fecha ascendente y filtrando las citas no vencidas
            string query = "SELECT m.Nombre_Mascota, c.Proxima_Fecha, c.Medico_Asignado " +
                           "FROM Citas c " +
                           "INNER JOIN Mascotas m ON c.ID_Mascota = m.ID_Mascota " +
                           "WHERE c.Proxima_Fecha >= GETDATE() " +
                           "ORDER BY c.Proxima_Fecha ASC";

            // Crear una conexión SQL
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Abrir la conexión
                connection.Open();

                // Crear un adaptador de datos SQL
                using (SqlDataAdapter adapter = new SqlDataAdapter(query, connection))
                {
                    // Crear un DataSet para almacenar los datos
                    DataSet dataSet = new DataSet();

                    // Llenar el DataSet con los datos de la consulta
                    adapter.Fill(dataSet);

                    // Asignar el DataSet como fuente de datos para el GridView
                    GridViewCitas.DataSource = dataSet;
                    GridViewCitas.DataBind();
                }
            }
        }
    }
}



