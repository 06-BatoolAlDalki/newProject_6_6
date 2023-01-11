<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_editbyadmin.aspx.cs" Inherits="RoomToRead.user_editbyadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <style>
    body {
    margin: 0;
    padding-top: 40px;
    color: #2e323c;
    background: #f5f6fa;
    position: relative;
    height: 100%;
}
.account-settings .user-profile {
    margin: 0 0 1rem 0;
    padding-bottom: 1rem;
    text-align: center;
}
.account-settings .user-profile .user-avatar {
    margin: 0 0 1rem 0;
}
.account-settings .user-profile .user-avatar img {
    width: 90px;
    height: 90px;
    -webkit-border-radius: 100px;
    -moz-border-radius: 100px;
    border-radius: 100px;
}
.account-settings .user-profile h5.user-name {
    margin: 0 0 0.5rem 0;
}
.account-settings .user-profile h6.user-email {
    margin: 0;
    font-size: 0.8rem;
    font-weight: 400;
    color: #9fa8b9;
}
.account-settings .about {
    margin: 2rem 0 0 0;
    text-align: center;
}
.account-settings .about h5 {
    margin: 0 0 15px 0;
    color: #007ae1;
}
.account-settings .about p {
    font-size: 0.825rem;
}
.form-control {
    border: 1px solid #cfd1d8;
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    font-size: .825rem;
    background: #ffffff;
    color: #2e323c;
}
.card {
    background: #ffffff;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    border: 0;
    margin-bottom: 1rem;
}

 .nav > li > a:hover, .nav > li > a:focus {
    text-decoration: none;
    background-color:#b2d3c2 !important;
}

  </style>
        <script src="Scripts/sweetalert.min.js"></script>
    <link href="Styles/sweetalert.css" rel="stylesheet" />
 <link rel="stylesheet" href="AdminCss/vendors/ti-icons/css/themify-icons.css"/>
  <link rel="stylesheet" href="AdminCss/vendors/base/vendor.bundle.base.css"/>
  <!-- endinject -->
  <!-- inject:css -->
  <link rel="stylesheet" href="AdminCss/css/style.css"/>
  <!-- endinject -->
  <link rel="shortcut icon" href="AdminCss/images/favicon.png" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="../../index.html"><img src="../../images/Logo.png" class="mr-2" alt="logo" style="height: 65px; width: 65px;"/></a>
        <a class="navbar-brand brand-logo-mini" href="../../index.html"><img src="../../images/Logo.png" alt="logo"  style="height: 60px; width: 60px;"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="ti-view-list"></span>
        </button>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="ti-view-list"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper" style="padding-top:0px !important">
      <!-- partial:../../partials/_sidebar.html -->
      
      <nav class="sidebar sidebar-offcanvas" id="sidebar" style="background-color: #1C5E55;" >
        <ul class="nav ">
        
          <li class="nav-item a">
            <a class="nav-link a" href="Admin_category.aspx">
              <i class="fa-solid fa-clipboard-list a" style="font-size: 20px;"></i>
              <span class="menu-title a" style="text-align: center; margin-left: 20%;color: white;font-family:'Times New Roman';font-style:italic ">&nbsp;Category</span>
            </a>
          </li>
          <li class="nav-item a">
            <a class="nav-link" href="request_Books_Admin.aspx">
              <i class="fa-solid fa-book" style="font-size: 20px;"></i>
              <span class="menu-title" style="text-align: center; margin-left: 20%;color: white;font-family:'Times New Roman';font-style:italic ">&nbsp; Books</span>
            </a>
          </li>
        
          <li class="nav-item a">
            <a class="nav-link" href="UsersInadminDashboard.aspx">
              <i class="fa-solid fa-user" style="font-size: 20px;"></i>
              <span class="menu-title" style="text-align: center; margin-left: 20%;color: white;font-family:'Times New Roman';font-style:italic ">&nbsp; Users</span>
            </a>
          </li>

             <li class="nav-item a">
                <a class="nav-link" ID="A1"  runat="server"  href="chartNew.aspx">
              <i class="fa fa-sign-out" style="font-size: 20px;"></i>
              <span class="menu-title" style="text-align: center; margin-left: 20%;color: white;font-family:'Times New Roman';font-style:italic ">&nbsp; Statistics</span>
             </a>
          </li>

            <li class="nav-item a">
                <a class="nav-link" ID="LinkButton1"  runat="server">
              <i class="fa fa-sign-out" style="font-size: 20px;"></i>
              <span class="menu-title" style="text-align: center; margin-left: 20%;color: white;font-family:'Times New Roman';font-style:italic ">&nbsp; Logout</span>
             </a>
          </li>


        </ul>
      </nav>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <h2 style="    text-align: center; font-size: xx-large; color:#49796b ; font-family:'Times New Roman'">User Profile</h2>
                    <br />
                  
                  <div class="table-responsive">
       
                     
                      </div>
                    
             

                  <div class="container" style="width:96%" >
<div class="row gutters">
<div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
<div class="card h-100">
	<div class="card-body">
		<div class="account-settings">
			<div class="user-profile">
				<div class="user-avatar">
                      <asp:Image ID="Image1" runat="server" width="200px" Height="200px"  />



				</div>
				
			</div>
			<div class="text-right">
                <asp:FileUpload ID="FileUpload1" runat="server" accept=".png,.jpg,.jpeg,.gif" />

			</div>
		</div>
	</div>
</div>
</div>
<div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
<div class="card h-100">
	<div class="card-body">
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<h6 class="mb-2 text-primary">Personal Details</h6>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="fullName">First Name</label>
                      <asp:TextBox ID="FirstName" CssClass="form-control" runat="server" placeholder="First Name"></asp:TextBox>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="eMail">Last Name</label>
                   <asp:TextBox ID="LastName" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>

				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="phone">Phone</label> 
                 <asp:TextBox ID="PhoneNumber" CssClass="form-control" runat="server" placeholder="Last Name"></asp:TextBox>


				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="website">EmailL</label>
				
                   <asp:TextBox ID="Email" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>

				</div>
			</div>
		</div>
				<di class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<h6 class="mt-3 mb-2 text-primary">Address</h6>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="Street">Address</label>
                    <asp:TextBox ID="Address" CssClass="form-control" runat="server" placeholder="Addres"></asp:TextBox>

				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="ciTy">City</label>
                  <asp:DropDownList ID="City"  runat="server" cssClass="form-control" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></asp:DropDownList>
				</div>
			</div>
			<%--<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="Street">Address</label>
				</div>
			</div>
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
				<div class="form-group">
					<label for="ciTy">City</label>
				</div>--%>
		
			<div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
		<div class="row gutters">
			<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
				<div class="text-right">
                 <asp:Button ID="addedit" cssclass="btn btn-primary" OnClick="addedit_Click"  runat="server" Text="Update" style="background-color:#49796b" />

				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>


                          </div>
              </div>
                
            </div>
        
        </div>
        </div>

             <script type="text/javascript">
                

                 function successaler() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Book has been succesfully deleted',
                         type: 'success'
                     });
                 }
                
             </script>
    </form>
</body>
</html>