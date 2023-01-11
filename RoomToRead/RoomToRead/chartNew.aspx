<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chartNew.aspx.cs" Inherits="RoomToRead.chartNew" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <style>
      @import url(https://unpkg.com/@webpixels/css@1.1.5/dist/index.css);

/* Bootstrap Icons */
@import url("https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.4.0/font/bootstrap-icons.min.css");
  </style>

    <title></title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
   
    
    <script src="js/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
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
<style>
    /*#add{*/
/*        margin-top:6%;
*/    /*}
    .containergrid{
        width:100%;
        
        margin-left:5%;
    }
    #editAnddelete{*/
       /* width:80%;
        margin-left:auto;
        margin-right:auto;*/
    /*}
    #GridView1{
        font-size:2rem;
    }*/
    .table tr td{
        font-size:1.5rem;
    }
  /*  .a{

    }
    .a:hover{
 background-color:aquamarine;
    }*/

  .nav > li > a:hover, .nav > li > a:focus {
    text-decoration: none;
    background-color:#b2d3c2 !important;
}
</style></head>
<body>
    <form id="form1" runat="server">
        
               <!-- partial:../../partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo mr-5" href="../../index.html"><img src="Images/batool1.png" class="mr-2" alt="logo" style="height: 65px; width: 65px;"/></a>
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
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row"<%-- style=" margin-right:-12px"--%>>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body" >
                  <h2 style="    text-align: center; font-size: xx-large; color:#49796b ; font-family:'Times New Roman'" >Statistics</h2>
<%--                    <br />--%>
                  
                  <%--<div class="table-responsive">
       
        
                         
                  </div>--%>

                </div>
              </div>
                
            </div>

<%--             ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>

               <div>
             <main class="py-6 bg-surface-secondary">
          <div class="container-fluid">
              <!-- Card stats -->
              <div class="row g-6 mb-6">
                  <div class="col-xl-3 col-sm-6 col-12 ">
                      <div class="card shadow border-0" style="height: 110px">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Number of Taken Books</h5></span>
                                      <span class="h3 font-bold mb-0"> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-tertiary text-white text-lg rounded-circle">
                                          <i class="bi bi-book"></i>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0" style="height: 110px">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Total Number of Books</h5></span>
                                      <span class="h3 font-bold mb-0"> <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                        <i class="bi bi-people"></i>
                                      </div>
                                  </div>
                                </div>
                          </div>
                      </div>
                  </div>
                  <br />
                  <div class="col-xl-3 col-sm-6 col-12" >
                      <div class="card shadow border-0" style="height: 110px">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col" >
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Number of People Donors</h5></span>
                                      <span class="h3 font-bold mb-0"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-info text-white text-lg rounded-circle">
                                        <i class="bi bi-people"></i>
                                      </div>
                                  </div>
                              </div>
                             
                          </div>
                      </div>
                  </div>
                   <div class="col-xl-3 col-sm-6 col-12" >
                      <div class="card shadow border-0" style="height: 110px">
                          <div class="card-body">
                              <div class="row">
                                  <div class="col">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Total Number of Ordinary people</h5></span>
                                      <span class="h3 font-bold mb-0">   <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-primary text-white text-lg rounded-circle">
                                        <i class="bi bi-people"></i>
                                      </div>
                                  </div>
                                </div>
                          </div>
                      </div>
                  </div>
                  <div class="col-xl-3 col-sm-6 col-12">
                      <div class="card shadow border-0"style="height: 110px" >
                          <div class="card-body">
                              <div class="row" >
                                  <div class="col" style="height: 130px">
                                      <span class="h6 font-semibold text-muted text-sm d-block mb-2"><h5>Number Of Categories</h5></span>
                                      <span class="h3 font-bold mb-0"> <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span>
                                  </div>
                                  <div class="col-auto">
                                      <div class="icon icon-shape bg-warning text-white text-lg rounded-circle">
                                          <i class="bi bi-list"></i>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
                

      </main>
        </div>
   
                <br />
                <br />
                <br />
              </div>
               
              
          </div>
        </div>
         </div>
            


           <script src="AdminCss/vendors/base/vendor.bundle.base.js"></script>
<script src="AdminCss/js/off-canvas.js"></script>
  <script src="AdminCss/js/hoverable-collapse.js"></script>
  <script src="AdminCss/js/template.js"></script>
  <script src="AdminCss/js/todolist.js"></script>



             <script type="text/javascript">
                 function successalert() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Book has been succesfully added',
                         type: 'success'
                     });
                 }

                 function successaler() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Book has been succesfully deleted',
                         type: 'success'
                     });
                 }
                 function successale() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Book has been succesfully updated',
                         type: 'success'
                     });
                 }
             </script>
     
    </form>
</body>
</html>
