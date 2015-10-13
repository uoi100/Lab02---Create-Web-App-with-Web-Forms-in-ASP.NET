using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CalvinTruongLab02
{
    public partial class _default : System.Web.UI.Page
    {
        /// <summary>
        /// When the page loads, create a list of items to be added to the DropDownList object
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (DropDownList.Items.Count == 0)
            {
                // Add items to the DropDownList
                DropDownList.Items.Clear();
                for (int i = 1; i <= 10; i++)
                {
                    ListItem item = new ListItem();
                    item.Text = (i * 5).ToString();
                    item.Value = item.Text;
                    DropDownList.Items.Add(item);
                }
            }
        }

        protected void ButtonCalculate(object sender, EventArgs e)
        {
            if (valid_Annual.IsValid && valid_Years.IsValid)
            {
                double interestRate = 1 + (double.Parse(txt_Annual.Text)/100);
                int years = int.Parse(txt_Years.Text);
                double calculation = 0;

                // We calculate the amount we get in 12 months since the calculation is annually
                int monthlyInvestment = int.Parse(DropDownList.SelectedValue) * 12;

                for(int i = 0; i < years; i++)
                {
                    calculation = (calculation + monthlyInvestment) * interestRate;
                }

                lbl_FutureValue.Text = "$" + calculation.ToString("N2");
            }
        }

        protected void ButtonClear(object sender, EventArgs e)
        {
            txt_Annual.Text = "1";
            txt_Years.Text = "1";
            lbl_FutureValue.Text = "";
            DropDownList.SelectedIndex = 0;
        }
    }
}