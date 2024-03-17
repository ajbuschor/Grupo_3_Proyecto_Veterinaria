using System;
using System.Data.SqlClient;

namespace Grupo_3_Proyecto_Veterinaria
{
    public partial class AgregarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Este método se ejecuta cuando la página se carga
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // Este método se ejecuta cuando se hace clic en el botón Guardar
            string login = txtLogin.Text;
            string clave = txtClave.Text;
            string nombre = txtNombre.Text;

            AgregarNuevoUsuario(login, clave, nombre);

            // Redirigir a la página de reporte de usuarios después de agregar un nuevo usuario
            Response.Redirect("ReporteUsuarios.aspx");
        }

        protected void AgregarNuevoUsuario(string login, string clave, string nombre)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["VeterinariaConnectionString"].ConnectionString;
            string query = "INSERT INTO Usuarios (Login_Usuario, Clave_Usuario, Nombre_Usuario) VALUES (@Login, @Clave, @Nombre)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Login", login);
                command.Parameters.AddWithValue("@Clave", clave);
                command.Parameters.AddWithValue("@Nombre", nombre);

                connection.Open();
                command.ExecuteNonQuery();
            }
        }
    }
}

