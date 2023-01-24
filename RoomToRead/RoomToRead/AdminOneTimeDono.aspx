<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminOneTimeDono.aspx.cs" Inherits="RoomToRead.AdminOneTimeDono" %>


        




<%--////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////--%>




<!DOCTYPE html>



<style>
   
    .container{
       padding-top:0px !important;
    }
</style>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script src="Scripts/sweetalert.min.js"></script>
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
    <link href="Styles/sweetalert.css" rel="stylesheet" />
 <link rel="stylesheet" href="AdminCss/vendors/ti-icons/css/themify-icons.css"/>
  <link rel="stylesheet" href="AdminCss/vendors/base/vendor.bundle.base.css"/>
  <!-- endinject -->
  <!-- inject:css -->
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

  <link rel="stylesheet" href="AdminCss/css/style.css"/>
  <!-- endinject -->
  <link rel="shortcut icon" href="AdminCss/images/favicon.png" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
<style>
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
    .wrapper .sidebar .profile{
    margin-bottom: 30px;
    text-align: center;

}
.headertitle{
  
   
}
#GridView1{
    
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


    #add{
        margin-top:6%;
    }
    #editAnddelete{
        width:80%;
        margin-left:auto;
        margin-right:auto;
    }
    #GridView1{
        font-size:2rem;
    }
    .table tr td{
        font-size:1.5rem;
    }
    ul li{
      width:103%;
      margin-left:-3%;
    }
    .headertitle{
  background-color:#b2d3c2;
  width:87%;
  margin-left:13%;
  justify-content:center;
  align-items:center;
  font-size:x-large;
  font-weight:bold;
  margin-bottom:1.5%;
  
   
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
    .section{
        display: block;

    }

 .headertitle{
  width: 100%;
  height: 50px;
  margin-left: 0%;
  display: flex;
  padding-top:0.5%;
  background-color:#b2d3c2;;
  justify-content: center;
  font-size:x-large;
}
}
</style>
    <title></title>
</head>
<body>
    <form id="form2" runat="server">
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
                <a href="request_Books_Admin.aspx" >
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
                    <span class="item" >Category</span>
                </a>
            </li>

            <li>
                <a href="UsersInadminDashboard.aspx">
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
                <a href="AdminOneTimeDono.aspx"  class="active">
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
                <h3>One Time Donations</h3>
        </div>

        </div>
    
   <main>

  <div class="con">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [oneTimeDonate] WHERE [book_id] = @book_id" InsertCommand="INSERT INTO [oneTimeDonate] ([book_name], [Author], [book_address], [brief], [firstName], [lastName], [phone], [email], [book_image]) VALUES (@book_name, @Author, @book_address, @brief, @firstName, @lastName, @phone, @email, @book_image)" SelectCommand="SELECT * FROM [oneTimeDonate]" UpdateCommand="UPDATE [oneTimeDonate] SET [book_name] = @book_name, [Author] = @Author, [book_address] = @book_address, [brief] = @brief, [firstName] = @firstName, [lastName] = @lastName, [phone] = @phone, [email] = @email, [book_image] = @book_image WHERE [book_id] = @book_id">
            <DeleteParameters>
                <asp:Parameter Name="book_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="book_name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="book_address" Type="String" />
                <asp:Parameter Name="brief" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="book_image" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="book_name" Type="String" />
                <asp:Parameter Name="Author" Type="String" />
                <asp:Parameter Name="book_address" Type="String" />
                <asp:Parameter Name="brief" Type="String" />
                <asp:Parameter Name="firstName" Type="String" />
                <asp:Parameter Name="lastName" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="book_image" Type="String" />
                <asp:Parameter Name="book_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView  class="table table-striped table-hover table-responsive" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" PageSize="5" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDeleted="GridView1_RowDeleted" OnRowDeleting="GridView1_RowDeleting">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="book_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
                <asp:BoundField DataField="book_name" HeaderText="Title" SortExpression="book_name" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="book_address" HeaderText="Pick-Up Address" SortExpression="book_address" />           
                <asp:TemplateField HeaderText="Picture" SortExpression="book_image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("book_image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image1" style="height:100px; width:100px" runat="server" ImageUrl='<%# Eval("book_image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowDeleteButton="True" HeaderText="Actions" ShowSelectButton="True" />
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
        <div style="margin-left:5%">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="book_id" DataSourceID="SqlDataSource2" Height="50px" Width="50%" CellPadding="4" ForeColor="#333333" GridLines="None" >
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="book_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="book_id" />
                <asp:BoundField DataField="book_name" HeaderText="Title" SortExpression="book_name" />
                <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                <asp:BoundField DataField="book_address" HeaderText="Pick-Up Address" SortExpression="book_address" />
                <asp:BoundField DataField="brief" HeaderText="Brief" SortExpression="brief" >
                </asp:BoundField>
                <asp:BoundField DataField="firstName" HeaderText="Donor First Name" SortExpression="firstName" />
                <asp:BoundField DataField="lastName" HeaderText="Donor Last Name" SortExpression="lastName" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                <asp:TemplateField HeaderText="book_image" SortExpression="Picture">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("book_image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("book_image") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Image style="height:200px; width:200px" ID="Image2" runat="server" ImageUrl='<%# Eval("book_image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
              
            </Fields>
             
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Left" VerticalAlign="Middle" Width="200px" Height="100px" />
        </asp:DetailsView>
             </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [oneTimeDonate] WHERE ([book_id] = @book_id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="book_id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        
    </form>
                
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
                         text: 'Donator has been succesfully deleted',
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

                 jQuery("a").filter(function () {
                     return this.innerHTML.indexOf("Delete") == 0;
                 }).click(function () {
                     return confirm("Are you sure you want to delete this Donator ?");
                 });
             </script>
          
</body>
</html>
 