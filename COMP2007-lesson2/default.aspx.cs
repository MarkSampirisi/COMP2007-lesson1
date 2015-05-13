using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP2007_lesson2
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = "";
            }
        }

        protected void btnCopyText_Click(object sender, EventArgs e)
        {
            //copy the text box text to the label
            lblMessage.Text = txtMessage.Text;
            btnCopyText.Enabled = false;
        }

        protected void btnToppings_Click(object sender, EventArgs e)
        {
            lblToppings.Text = "";

            foreach (ListItem topping in cblToppings.Items)
            {
                if (topping.Selected)
                {
                    lblToppings.Text += topping.Text + ", ";
                }
            }

            lblSize.Text = ddlSize.SelectedItem.Text;
        }




        protected void cblToppings_SelectedIndexChanged(object sender, EventArgs e)
        {
            //lblToppings.Text = "Autopostback";
        }

        protected void ddlSize_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}