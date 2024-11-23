<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Sellers.aspx.cs" Inherits="BookShop.View.Admin.Sellers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mainbody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8"><br /> <img src="../../Assets/Images/book1.jpg" style="width:400px; height:auto;"/><%--<h4 class="text-center">  Manage Products</h4>--%></div>
            <h4 class="text-center">Sellers</h4></div>
        </div>       
        <div class="row m-lg-3">
            <div class="col-md-4">
                <h2>Seller Details</h2>
                <%--<form runat="server">--%>
                  <div class="mb-3">
                    <label for="SellerName">Seller Name</label>
                    <input type="text" class="form-control" id="SellerName" placeholder="Seller Name" runat ="server">    
                  </div>
                  <div class="mb-3">
                    <label for="SellerEmail">Seller Email</label>
                    <input type="email" class="form-control" id="SellerEmail" placeholder="Email" runat ="server">    
                  </div>
                  <div class="mb-3">
                    <label for="SellerPassword">Seller Password</label>
                    <input type="password" class="form-control" id="SellerPassword" placeholder="" runat ="server">    
                  </div>
                  <div class="mb-3">
                    <label for="SellerPhone">Seller Phone Number</label>
                    <input type="tel" class="form-control" id="SellerPhone" placeholder="Phone Number" runat ="server">    
                  </div>
                   <div class="mb-3">
                    <label for="SellerAddress">Seller Address</label>
                    <input type="text" class="form-control" id="SellerAddress" placeholder="Address" runat ="server">    
                  </div>
                <%--</form>--%>
                <div>
                    <label id="ErrMsg" runat ="server" class="text-danger"></label><br />
                    <asp:Button Text="  Edit  " Class="btn btn-danger" runat="server" id="EditBtn"/>
                    <asp:Button Text="  Save  " Class="btn btn-danger" runat="server" id="SaveBtn" OnClick="SaveBtn_Click"/>
                    <asp:Button Text=" Delete " Class="btn btn-danger" runat="server" id="DeleteBtn"/>
                </div>
            </div>
            
            <div class="col-md-8">
                <asp:GridView runat ="server" class ="table table-hover" ID="SellerGrVi" >

                </asp:GridView>
            </div>
        </div>
</asp:Content>
