<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Books.aspx.cs" Inherits="RoomToRead.Admin_Books" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title></title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
       <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
   
    
    <style>
.container1{
    position:relative;
}
.left{
    width:15%;
    height:700px;
    background-color:#49796b;
    position:absolute;
}
.right{
     width:85%;
    height:150px;
    background-color:#49796b;
    position:absolute;
    float:right;
    /*border:3px solid black;*/
    left:15%;
}
.center{
     width:85%;
    height:940px;
   /* background-color:gray;*/
    position:absolute;
    float:right;
   /* border:3px solid black;*/
    left:15%;
    top:150px;
    background-color:	#eeeeee;
   /*background-image: url('img/back1.jpg');*/
  /* background-repeat:no-repeat;*/
   /*background-size:contain;*/
  

}
w3-button{
      background-color: #49796b !important;
    border: none;
    color: white;
    font-size: 3.5rem;
    position: absolute;
    top: 44px;
}
    <style>

.container1{
    position:relative;
}
.left{
    width:15%;
    height:700px;
    background-color:#49796b;
    position:absolute;
}
.right{
     width:85%;
    height:150px;
    background-color:#49796b;
    position:absolute;
    float:right;
    /*border:3px solid black;*/
    left:15%;
}
.center{
     width:85%;
    height:940px;
   /* background-color:gray;*/
    position:absolute;
    float:right;
   /* border:3px solid black;*/
    left:15%;
    top:150px;
    background-color:	#eeeeee;
   /*background-image: url('img/back1.jpg');*/
  /* background-repeat:no-repeat;*/
   /*background-size:contain;*/
  

}
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
    .wrapper .sidebar .profile{
    margin-bottom: 30px;
    text-align: center;

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
  background-color: #b2d3c2;
  justify-content: center;
  font-size:x-large;
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
  background-color: #b2d3c2;
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
w3-button{
      background-color: #49796b !important;
    border: none;
    color: white;
    font-size: 3.5rem;
    position: absolute;
    top: 44px;
}
        </style>
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
                <a href="Admin_Books.aspx" class="active">
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
                <h3>Books</h3>
        </div>

        </div>
    
   <main>
       <div class="con">
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
           

           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
                <br />
                <br />
                 <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" CssClass="table table-striped" OnRowDeleted="GridView2_RowDeleted" OnRowDeleting="GridView2_RowDeleting" OnRowUpdated="GridView2_RowUpdated" OnRowUpdating="GridView2_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="book_name" HeaderText=" Name" SortExpression="book_name" />
                        <asp:TemplateField HeaderText=" Image" SortExpression="Book_image">
                            <EditItemTemplate>
                            <asp:FileUpload ID="FileUpload2" runat="server" accept=".png,.jpg,.jpeg,.gif"  />
                                <asp:FileUpload ID="FileUpload1" runat="server"  />
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


     </div>


   </main>
   
       
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
  <script>

var hamburger = document.querySelector(".hamburger");
    hamburger.addEventListener("click", function(){
        document.querySelector("body").classList.toggle("active");
    })
  </script>
      
    </form>
</body>
</html>
