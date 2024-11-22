<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="BookShop.View.Admin.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mainbody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8"><br /> <img src="../../Assets/Images/book1.jpg" style="width:400px; height:auto;"/><%--<h4 class="text-center">  Manage Products</h4>--%></div>
            <h4 class="text-center">  Manage Products</h4></div>
        </div>       
        <div class="row m-lg-3">
            <div class="col-md-4">
                <h2>Products Details</h2>
                <%--<form runat="server">--%>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Product Name</label>
                    <input type="text" class="form-control" id="ProdName" placeholder="Product Name">    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Product Category</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Category">    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Product Price</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Price">    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Product Quantity</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Quantity">    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Date</label>
                    <input type="Date" class="form-control" id="AddDate" placeholder="">    
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
