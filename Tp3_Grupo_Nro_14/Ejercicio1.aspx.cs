using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;



namespace Tp3_Grupo_Nro_14
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnGuardarLoc_Click(object sender, EventArgs e)
        {
            string loc = txtbLocalidad.Text.Trim(); //TRIM PARA QUE NO ACEPTE VALORES VACIOS Y SAQUE LOS ESPACIOS AL COMIENXO Y AL FINAL
            bool existe = false;
            lblLocaGuardada.Text = "";

            if (!string.IsNullOrWhiteSpace(loc)) //VERIFICO QUE NO HALLA VALORES EN BLANCO XQ PORMAS Q ESTE EL VALIDATOR LO AGREGA IGUAL
            {
                
                foreach (ListItem item in ddlLocalidades.Items)//BUSCO SI LA LOCALIDAD INGRESADA ESTA EN EL DROPDOWLIST LOCALIDAD
                {
                    if (string.Equals(item.Text, loc, StringComparison.OrdinalIgnoreCase)) // Comparación sin distinguir entre mayúsculas y minúsculas
                        {
                        existe = true;
                        MessageBox.Show("Esa Localidad ya existe!");
                        txtbLocalidad.Text = "";
                        break;
                    }
                }

                // SI LA LOCALIDAD NO EXISTE EN EL DROPDOWLIST , LO AGREGO
                if (!existe)
                {
                    ddlLocalidades.Items.Add(new ListItem(loc, txtbLocalidad.Text));
                    txtbLocalidad.Text = "";
                    lblLocaGuardada.Text = "Localidad Guardada!";
                }
                               
            }

            
        }

       

            

        protected void btnGuardarUs_Click(object sender, EventArgs e)
        {
            lblBienvenido.Text = "Bienvenido " + txtbUsuario.Text;
        }

        protected void btnIrInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx"); 
        }
    }
}