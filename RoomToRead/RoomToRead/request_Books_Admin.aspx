<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request_Books_Admin.aspx.cs" Inherits="RoomToRead.request_Books_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                  <h2 style="    text-align: center; font-size: xx-large; color:#49796b ; font-family:'Times New Roman'" >Books</h2>
<%--                    <br />--%>
                  
                  <%--<div class="table-responsive">
       
        
                         
                  </div>--%>

                </div>
              </div>
                
            </div>

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [books] WHERE [book_id] = @book_id" InsertCommand="INSERT INTO [books] ([book_id], [user_id], [category_id], [Book_description], [book_name], [donating_date], [approve], [taken], [Book_image]) VALUES (@book_id, @user_id, @category_id, @Book_description, @book_name, @donating_date, @approve, @taken, @Book_image)" SelectCommand="SELECT * FROM [books]" UpdateCommand="UPDATE [books] SET [user_id] = @user_id, [category_id] = @category_id, [Book_description] = @Book_description, [book_name] = @book_name, [donating_date] = @donating_date, [approve] = @approve, [taken] = @taken, [Book_image] = @Book_image WHERE [book_id] = @book_id">
                <DeleteParameters>
                    <asp:Parameter Name="book_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="book_id" Type="Int32" />
                    <asp:Parameter Name="user_id" Type="String" />
                    <asp:Parameter Name="category_id" Type="Int32" />
                    <asp:Parameter Name="Book_description" Type="String" />
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="donating_date" />
                    <asp:Parameter Name="approve" Type="Int32" />
                    <asp:Parameter Name="taken" Type="Boolean" />
                    <asp:Parameter Name="Book_image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="user_id" Type="String" />
                    <asp:Parameter Name="category_id" Type="Int32" />
                    <asp:Parameter Name="Book_description" Type="String" />
                    <asp:Parameter Name="book_name" Type="String" />
                    <asp:Parameter DbType="Date" Name="donating_date" />
                    <asp:Parameter Name="approve" Type="Int32" />
                    <asp:Parameter Name="taken" Type="Boolean" />
                    <asp:Parameter Name="Book_image" Type="String" />
                    <asp:Parameter Name="book_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
<%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
&nbsp;&nbsp;&nbsp;&nbsp;--%>
           
              <div class="containergrid" style="width:100%">
                 
                   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" CssClass="table table-striped" OnRowDeleted="GridView2_RowDeleted" OnRowDeleting="GridView2_RowDeleting" OnRowUpdated="GridView2_RowUpdated" OnRowUpdating="GridView2_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="book_name" HeaderText=" Name" SortExpression="book_name" />
                        <asp:TemplateField HeaderText=" Image" SortExpression="Book_image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                <a href="CreateCat.aspx">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Book_image") %>'></asp:Label>
                                </a>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Book_image") %>' height="60px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Book_description" HeaderText=" Description" SortExpression="Book_description" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("approve") %>'>
                                    <asp:ListItem Value="1">Accept</asp:ListItem>
                                    <asp:ListItem Value="2">Reject</asp:ListItem>
                                    <asp:ListItem Value="0">Wait</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Enabled="False" SelectedValue='<%# Eval("approve") %>'>
                                    <asp:ListItem Value="1">Accept</asp:ListItem>
                                    <asp:ListItem Value="2">Reject</asp:ListItem>
                                    <asp:ListItem Value="0">Wait</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                       <EditRowStyle BackColor="#7C6F57" />
                       <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#E3EAEB" />
                       <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F8FAFA" />
                       <SortedAscendingHeaderStyle BackColor="#246B61" />
                       <SortedDescendingCellStyle BackColor="#D4DFE1" />
                       <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <br />
                <br />
                <br />
              </div>
               
              
          </div>
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
        </div>
    </form>
</body>
</html>
