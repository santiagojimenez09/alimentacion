using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace alimentacion
{
    public partial class Frmalimentacion : System.Web.UI.Page


    {

        int plato, bebida; 
        double propina, iva, total;
        


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Lblplato.Text = "6000";
                Lblbebida.Text = "2500";
                Lblpropina.Text = "0";
                Lbliva.Text = "0";


            }
        }

        protected void Calcular_total()
        {
            plato = Convert.ToInt32(Lblplato.Text);
            bebida = Convert.ToInt32(Lblbebida.Text);
            propina = Convert.ToInt32(Lblpropina.Text);
            iva = Convert.ToInt32(Lbliva.Text);

            total = plato + bebida + propina + iva;
            Lbltotal.Text = "" + total;
            

        }

        protected void Btncalcular_Click(object sender, EventArgs e)
        {
            Calcular_total();

        }

        protected void Ddlplato_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (Ddlplato.SelectedIndex)
            {
                case 0:Lblplato.Text = "6000";
                    break;
                case 1:Lblplato.Text = "10000";
                    break;
                case 2:Lblplato.Text = "15000";
                    break;
            }Calcular_total();
        }

        protected void Btnlimpiar_Click(object sender, EventArgs e)
        {
            Lblplato.Text = "6000";
            Lblbebida.Text = "2500";
            Lblpropina.Text = "0";
            Lbliva.Text = "0";
            Lbltotal.Text = "";
            Rblbebida.SelectedValue = "Jugo";
            Ddlplato.SelectedValue = "Desayuno";
            Cbiva.Checked = false;
            Cbpropina.Checked = false;
        }

        protected void Rblbebida_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (Rblbebida.SelectedIndex)
            {
                case 0:Lblbebida.Text = "2500";
                    break;
                case 1:Lblbebida.Text = "3000";
                    break;
                case 2:Lblbebida.Text = "5000";
                    break;
            }Calcular_total();
        }

        protected void Cbpropina_CheckedChanged(object sender, EventArgs e)
        {
            if (Cbpropina.Checked)
            {
                plato = Convert.ToInt32(Lblplato.Text);
                bebida = Convert.ToInt32(Lblbebida.Text);
                propina = (plato + bebida) * (double) 0.10;
                Lblpropina.Text = ""  + propina;
                Calcular_total();

            }


            else
            {
                Lblpropina.Text = "0";
                
            }

           

        }

        protected void Cbiva_CheckedChanged(object sender, EventArgs e)
        {
            if(Cbiva.Checked)
            {
                plato = Convert.ToInt32(Lblplato.Text);
                bebida = Convert.ToInt32(Lblbebida.Text);
                iva = (plato + bebida) * (double)0.16;
                Lbliva.Text = "" + iva;
                Calcular_total();

            }

            else
            {
                Lbliva.Text = "0";
            }
        }
    }
}