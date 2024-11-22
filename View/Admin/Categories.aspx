<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="BookShop.View.Admin.Categories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Mainbody" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-8"><br /> <img src="../../Assets/Images/book1.jpg" style="width:400px; height:auto;"/><%--<h4 class="text-center">  Manage Products</h4>--%></div>
            <h4 class="text-center">  Manage Categories</h4></div>
        </div>       
        <div class="row  m-lg-3">
            <div class="col-md-4">
                <h2>Category Details</h2>
                <%--<form runat="server">--%>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Category Name</label>
                    <input type="text" class="form-control" id="CateName" placeholder="Category Name">    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputEmail1">Category Remarks</label>
                    <input type="text" class="form-control" id="CateRemarks" placeholder="Category Remarks">    
                  </div>
                  <br /><br />
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
