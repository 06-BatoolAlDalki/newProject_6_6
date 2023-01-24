<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UsersInadminDashboard.aspx.cs" Inherits="RoomToRead.UsersInadminDashboard" %>




<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_category.aspx.cs" Inherits="RoomToRead.dashboard" %>--%>


<!DOCTYPE html>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.css">
      <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />

    <style type="text/css">
         @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
    .wrapper .sidebar .profile{
    margin-bottom: 30px;
    text-align: center;

}
    .search{
        display:flex;
        flex-direction:row;

       justify-content:center;
    }
    .search p{
        color:gray;
        margin-right:3%;
    }
.headertitle{
  
    
}
.section{
    display:none;
}
   @media screen and (min-width:1100px) {
         .con{
        width:83%;
        margin-left:16%;
    }
    }
@media screen and (min-width:0px) and (max-width:1100px) {
    .section{
        display: block;

    }

 .headertitle{
  width: 100%;
  height: 50px;
  margin-left: 0%;
  display: flex;
  padding-top:0.5%;
  background-color: #2ac89b;
  justify-content: center;
  font-size:x-large;
}
}
.wrapper .sidebar .profile img{
    display: block;
    width: 100px;
    height: 100px;
    border-radius: 50%;
    margin: 0 auto;
}

.wrapper .sidebar .profile h3{
    color: #ffffff;
    margin: 10px 0 5px;
}

.wrapper .sidebar .profile p{
    color: rgb(206, 240, 253);
    font-size: 14px;
}
body.active .wrapper .sidebar{
    left: -225px;
}

body.active .wrapper .section{
    margin-left: 0;
    width: 100%;
}

*{
    list-style: none;
    text-decoration: none;
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Open Sans', sans-serif;
}

body{
    background: #f5f6fa;
}

.wrapper .sidebar{
    background:#49796b;
    position: fixed;
    top: 0;
    left: 0;
    width: 225px;
    height: 100%;
    padding: 20px 0;
    transition: all 0.5s ease;
}
.wrapper .sidebar .profile{
    margin-bottom: 30px;
    text-align: center;
}
.wrapper .sidebar ul li a{
    display: block;
    padding: 13px 30px;
    border-bottom: 1px solid #49796b;
    color: rgb(241, 237, 237);
    font-size: 16px;
    position: relative;
}
.wrapper .sidebar ul li a:hover,
.wrapper .sidebar ul li a.active{
    color:#49796b;

    background:white;
    border-right: 2px solid #49796b;
}
.wrapper .section{
    width: calc(100% - 225px);
    margin-left: 225px;
    transition: all 0.5s ease;
}

.wrapper .section .top_navbar{
    background: #49796b;
    height: 50px;
    display: flex;
    align-items: center;
    padding: 0 30px;

}
ul li{
      width: 109%;
    margin-left: -9%;
    }

.wrapper .section .top_navbar .hamburger a{
    font-size: 28px;
    color: #f4fbff;
}

.wrapper .section .top_navbar .hamburger a:hover{
    color: #2ac89b;
}

.wrapper .sidebar ul li a:hover .icon,
.wrapper .sidebar ul li a.active .icon{
    color: #49796b;
}

.wrapper .sidebar ul li a:hover:before,
.wrapper .sidebar ul li a.active:before{
    display: block;
}

.wrapper .sidebar ul li a .icon{
    color: #dee4ec;
    width: 30px;
    display: inline-block;
}

.headertitle{
  background-color:#b2d3c2;
  width:87%;
  margin-left:13%;
  justify-content:center;
  align-items:center;
  font-size:x-large;
  font-weight:bold;
  
   
}
    .headertitle h3 {
        text-align: center;
        height: 65px;
        margin-top: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: 900;
        font-size: x-large;
    }
        
        #Image6,#Image5{
           
        }
        #buttons{
            display:flex;
            justify-content:center;
            margin:5%;
        }
        .headertitle{
  background-color:#b2d3c2;
  width:87%;
  margin-left:13%;
  justify-content:center;
  align-items:center;
  font-size:x-large;
  font-weight:bold;
  
   
}
    .headertitle h3 {
        text-align: center;
        height: 65px;
        margin-top: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        font-weight: 900;
        font-size: x-large;
    }
    @media screen and (min-width:0px) and (max-width:1100px) {
        .section {
            display: block;
        }

        .headertitle {
            width: 100%;
            height: 50px;
            margin-left: 0%;
            display: flex;
            padding-top: 0.5%;
            background-color: #b2d3c2;
            justify-content: center;
            font-size: x-large;
            margin-bottom:3%;
        }
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  
          <div>
                <div class="wrapper">
        <!--Top menu -->
        
        <div class="sidebar">
           <!--profile image & text-->   
           <div class="profile">
                <img src="Images/Nav.png" />
               <h3>Room to Read</h3>
        </div>
            <ul>
                <li>
                <a href="request_Books_Admin.aspx">
                    <span class="icon">
                        <i class="fa fa-book"></i>
                                        
                    </span>
                    <span class="item">Books</span>
                </a>
            </li>

            <li>
                <a href="Admin_category.aspx">
                    <span class="icon">
                        <i class="fa fa-briefcase"></i>
                                        
                    </span>
                    <span class="item">Category</span>
                </a>
            </li>

            <li>
                <a href="UsersInadminDashboard.aspx" class="active">
                    <span class="icon"><i class="fas fa-user-friends"></i></span>
                    <span class="item">Users</span>
                </a>
            </li>
            
          
            <li>
                <a href="chartNew.aspx">
                    <span class="icon"><i class="fa fa-chart-line"></i></span>
                    <span class="item">statistics</span>
                </a>
            </li>
             
                   <li>
                <a href="AdminOneTimeDono.aspx"  >
                    <span class="icon">
                        <i class="fa fa-briefcase"></i>                                   
                    </span>
                    <span class="item" style="font-size:14px" >One-Time Donations</span>
                </a>
            </li>
            <li>
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                    <span class="icon"><i class="fa fa-power-off" aria-hidden="true"></i></span>
                    <span class="item">Log out</span>
                </asp:LinkButton>
            </li>
        </ul>

    </div>
    <div class="section" >
        <div class="top_navbar">
            <div class="hamburger">
                <a href="#">
                    <i class="fas fa-bars"></i>
                </a>
            </div>
        </div>

    </div>
            <!--menu item-->
        </div>
        <div class="headertitle">
                <h3>Users</h3>
        </div>

        </div>
        
        <main>
             <div class="con">
      <div>
        


            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="
SELECT U.id ,phoneNumber,Email,C.city_name, firstname, lastname, user_image , user_address,
A.Name FROM AspNetUsers AS U JOIN AspNetUserRoles AS R ON U.Id=R.UserId JOIN AspNetRoles AS A ON A.Id=R.RoleId 
join city As C on U.city_id=C.city_id where A.id=2;
"></asp:SqlDataSource>
        </div>
                        


        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT U.Id, U.PhoneNumber, U.Email, C.city_name, U.firstname, U.lastname, U.user_image, U.birthofdate, U.user_address, A.Name FROM AspNetUsers AS U INNER JOIN AspNetUserRoles AS R ON U.Id = R.UserId INNER JOIN AspNetRoles AS A ON A.Id = R.RoleId INNER JOIN city AS C ON U.city_id = C.city_id WHERE (A.Id = 3)"></asp:SqlDataSource>
      
                 <div class="auto-style1" id="buttons">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Bieneficiaries" CssClass="btn btn-primary"  style="background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px;width:121px; height:50px;" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Donatories" CssClass="btn btn-primary"  style="background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px;width:121px; height:50px;"  /><br /><br />

            <br />
            <br />

        </div>
        <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="1" OnActiveViewChanged="MultiView2_ActiveViewChanged">
            <asp:View ID="View3" runat="server">
                <div class="auto-style1">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" cssClass="table table-responsive table-hover table-striped" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns   >
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="PhoneNumber" />
                            <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
                            <asp:TemplateField HeaderText="Picture" SortExpression="user_image">
                                <EditItemTemplate>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("user_image") %>' width="100px" Height="100px"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="user_address" HeaderText="Address" SortExpression="user_address" />
                            <asp:BoundField DataField="Name" HeaderText="Role" SortExpression="Name" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="deleteuseradmin?id={0}" Text="Delete" HeaderText="Delete" />
                            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="user_editbyadmin?id={0}" Text="Edit" HeaderText="Edit" />
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
                </div>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" cssClass="table table-responsive table-hover table-striped" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="firstname" HeaderText="First Name" SortExpression="firstname" />
                        <asp:BoundField DataField="lastname" HeaderText="Last Name" SortExpression="lastname" />
                        <asp:BoundField DataField="phoneNumber" HeaderText="Phone Number" SortExpression="phoneNumber" />
                        <asp:BoundField DataField="city_name" HeaderText="City" SortExpression="city_name" />
                        <asp:TemplateField HeaderText="Picture" SortExpression="user_image">
                            <EditItemTemplate>
                                <asp:FileUpload ID="FileUpload2" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("user_image") %>' width="100px" Height="100px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="user_address" HeaderText="Address" SortExpression="user_address" />
                        <asp:BoundField DataField="Name" HeaderText="Role" SortExpression="Name" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="deletedoaner?id={0}" Text="Delete" HeaderText="Delete" />
                        <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="user_editbyadmin?id={0}" Text="Edit" HeaderText="Edit" />
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
            </asp:View>
        </asp:MultiView>
          </div>
        </main>
          <script>

      var hamburger = document.querySelector(".hamburger");
      hamburger.addEventListener("click", function () {
          document.querySelector("body").classList.toggle("active");
      })
  </script>
          <script src="AdminCss/vendors/base/vendor.bundle.base.js"></script>
<script src="AdminCss/js/off-canvas.js"></script>
  <script src="AdminCss/js/hoverable-collapse.js"></script>
  <script src="AdminCss/js/template.js"></script>
  <script src="AdminCss/js/todolist.js"></script>



             <script type="text/javascript">
                 function successalert() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Category has been succesfully added',
                         type: 'success'
                     });
                 }

                 function successaler() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Category has been succesfully deleted',
                         type: 'success'
                     });
                 }
                 function successale() {
                     swal({
                         title: 'Perfect Working',
                         text: 'Your Category has been succesfully updated',
                         type: 'success'
                     });
                 }
             </script>
       
                </form>
    <p>
        &nbsp;</p>
</body>
</html>



