<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BookShop.View.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="../../Assets/Lib/Bootstrap/css/bootstrap.min.css" />
</head>
<body>
   <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>
    <div class="container-fluid">
        <div class="row" style=" height:100px;"></div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-4">
                <img src="../../Assets/Images/Bookshop1.jpg"  class="img-fluid" style=" height:auto; width:600px;"/>
            </div>
            <div class="col-md-4">
                <h1 class="text-danger">Sign Up</h1>
                 <div class="mb-3">
                    <label for="exampleInputEmail1">Email address</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                    
                  </div>
                  <div class="mb-3">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                  <div class="mb-3 form-check">
                    <input type="radio" class="form-check-input" id="SellerRadio">
                    <label class="form-check-label" for="exampleCheck1">Seller</label>
                    <input type="radio" class="form-check-input" id="AdminRadio">
                    <label class="form-check-label" for="AdminRadio">Admin</label>
                  </div>
                  <div class="mb-3 d-grid">
                      <button type="submit" class="btn btn-danger btn-block">Login</button>
                  </div>
                  
            </div>
            <div class="col-md-4">

            </div>
        </div>

    </div>
</body>
</html>