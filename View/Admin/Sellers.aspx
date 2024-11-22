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
                    <label for="exampleInputEmail1">Seller Name</label>
                    <input type="text" class="form-control" id="SellerName" placeholder="Seller Name">    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Seller Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Seller Password</label>
                    <input type="password" class="form-control" id="SellerPassword" placeholder="">    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Seller Phone Number</label>
                    <input type="tel" class="form-control" id="SellerPhone" placeholder="Phone Number">    
                  </div>
                   <div class="mb-3">
                    <label for="exampleInputEmail1">Seller Address</label>
                    <input type="text" class="form-control" id="SellerAddress" placeholder="Address">    
                  </div>
                <%--</form>--%>
                <div>
                    <asp:Button Text="  Edit  " Class="btn btn-danger" runat="server" />
                    <asp:Button Text="  Save  " Class="btn btn-danger" runat="server" />
                    <asp:Button Text=" Delete " Class="btn btn-danger" runat="server" />
                </div>
            </div>
            
            <div class="col-md-8">
                <%--Table Here--%>
            </div>
        </div>
</asp:Content>
