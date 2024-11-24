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
                if(SellerPasswordTB.Value == "" || SellerEmailTB.Value == "" || SellerNameTB.Value == "" || SellerPhoneTB.Value == "" || SellerAddressTB.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string SelName     = SellerNameTB.Value;
                    string SelEmail    = SellerEmailTB.Value;
                    string SelPassword = SellerPasswordTB.Value;
                    string SelPhone    = SellerPhoneTB.Value;
                    string SelAddress  = SellerAddressTB.Value;

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
        int Key = 0;
        protected void SellerGrVi_SelectedIndexChanged(object sender, EventArgs e)
        {
            SellerNameTB.Value = SellerGrVi.SelectedRow.Cells[2].Text;
            SellerEmailTB.Value = SellerGrVi.SelectedRow.Cells[3].Text;
            SellerPasswordTB.Value = SellerGrVi.SelectedRow.Cells[4].Text;
            SellerPhoneTB.Value = SellerGrVi.SelectedRow.Cells[5].Text;
            SellerAddressTB.Value = SellerGrVi.SelectedRow.Cells[6].Text;

            if(SellerNameTB.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(SellerGrVi.SelectedRow.Cells[1].Text);
            }

        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SellerPasswordTB.Value == "" || SellerEmailTB.Value == "" || SellerNameTB.Value == "" || SellerPhoneTB.Value == "" || SellerAddressTB.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string SelName = SellerNameTB.Value;
                    string SelEmail = SellerEmailTB.Value;
                    string SelPassword = SellerPasswordTB.Value;
                    string SelPhone = SellerPhoneTB.Value;
                    string SelAddress = SellerAddressTB.Value;

                    string Query = "update SellerTable set SellerName ='{0}',SellerEmail='{1}',SellerPassword='{2}',SellerPhone='{3}',SellerAddress='{4}' where SellerId='{5}'";
                    Query = string.Format(Query, SelName, SelEmail, SelPassword, SelPhone, SelAddress, SellerGrVi.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Updated!!!";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (SellerPasswordTB.Value == "" )
                {
                    ErrMsg.InnerText = "Missing Data";
                }
                else
                {
                    string SelName = SellerNameTB.Value;
                    string SelEmail = SellerEmailTB.Value;
                    string SelPassword = SellerPasswordTB.Value;
                    string SelPhone = SellerPhoneTB.Value;
                    string SelAddress = SellerAddressTB.Value;

                    string Query = "delete from SellerTable  where SellerId={0}";
                    Query = string.Format(Query, SellerGrVi.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSellers();
                    ErrMsg.InnerText = "Seller Deleted!!!";
                }

            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

    
    }
}