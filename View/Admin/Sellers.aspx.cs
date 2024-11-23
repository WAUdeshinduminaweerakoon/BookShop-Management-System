using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookShop.View.Admin
{
    public partial class Sellers : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowSellers();
        }

        //method

        public override void VerifyRenderingInServerForm(Control control)
        {
          
        }
        private void ShowSellers()
        {
            string Query = "Select *From SellerTable";
            SellerGrVi.DataSource = Con.getData(Query);
            SellerGrVi.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(SellerPassword.Value == "" || SellerEmail.Value == "" || SellerName.Value == "" || SellerPhone.Value == "" || SellerAddress.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string SelName     = SellerName.Value;
                    string SelEmail    = SellerEmail.Value;
                    string SelPassword = SellerPassword.Value;
                    string SelPhone    = SellerPhone.Value;
                    string SelAddress  = SellerAddress.Value;

                    string Query = "insert into SellerTable values('{0}','{1}','{2}','{3}','{4}')";
                    Query = string.Format(Query, SelName, SelEmail, SelPassword, SelPhone, SelAddress);
                    Con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Added!!!";
                }
                
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }
    }
}