<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="request_Books_Admin.aspx.cs" Inherits="RoomToRead.request_Books_Admin" %>






<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_category.aspx.cs" Inherits="RoomToRead.dashboard" %>--%>

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
                <a href="request_Books_Admin.aspx" class="active">
                    <span class="icon">
                        <i class="fa fa-book"></i>
                                        
                    </span>
                    <span class="item">Books</span>
                </a>
            </li>

            <li>
                <a href="Admin_category.aspx" >
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
                <h3>Books</h3>
        </div>

        </div>
    
   <main>

  <div class="con">
              
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [books] WHERE [book_id] = @book_id" InsertCommand="INSERT INTO [books] ([user_id], [category_id], [Book_description], [book_name], [donating_date], [approve], [taken], [Book_image], [author]) VALUES (@user_id, @category_id, @Book_description, @book_name, @donating_date, @approve, @taken, @Book_image, @author)" SelectCommand="SELECT * FROM [books] WHERE ([book_name] LIKE '%' + @book_name + '%')" UpdateCommand="UPDATE [books] SET [user_id] = @user_id, [category_id] = @category_id, [Book_description] = @Book_description, [book_name] = @book_name, [donating_date] = @donating_date, [approve] = @approve, [taken] = @taken, [Book_image] = @Book_image, [author] = @author WHERE [book_id] = @book_id">
                  <DeleteParameters>
                      <asp:Parameter Name="book_id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="user_id" Type="String" />
                      <asp:Parameter Name="category_id" Type="Int32" />
                      <asp:Parameter Name="Book_description" Type="String" />
                      <asp:Parameter Name="book_name" Type="String" />
                      <asp:Parameter DbType="Date" Name="donating_date" />
                      <asp:Parameter Name="approve" Type="Decimal" />
                      <asp:Parameter Name="taken" Type="Boolean" />
                      <asp:Parameter Name="Book_image" Type="String" />
                      <asp:Parameter Name="author" Type="String" />
                  </InsertParameters>
                  <SelectParameters>
                      <asp:ControlParameter ControlID="TextBox1" Name="book_name" PropertyName="Text" Type="String" />
                  </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="user_id" Type="String" />
                      <asp:Parameter Name="category_id" Type="Int32" />
                      <asp:Parameter Name="Book_description" Type="String" />
                      <asp:Parameter Name="book_name" Type="String" />
                      <asp:Parameter DbType="Date" Name="donating_date" />
                      <asp:Parameter Name="approve" Type="Decimal" />
                      <asp:Parameter Name="taken" Type="Boolean" />
                      <asp:Parameter Name="Book_image" Type="String" />
                      <asp:Parameter Name="author" Type="String" />
                      <asp:Parameter Name="book_id" Type="Int32" />
                  </UpdateParameters>
              </asp:SqlDataSource>
              <br />
              <br />
              <asp:Label ID="Label2" runat="server" Text="Search of Book Name :" style="margin-left:30%;font-size:large;font-weight:bold; color:#1C5E55 ;font-family:'Times New Roman'"></asp:Label>
              <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged" style="margin-left:1%" placeholder="Book Name" ></asp:TextBox>
              <br />
             
              <div class="containergrid" style="width:100%">
                  </div>
              

              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [books] WHERE [book_id] = @book_id" InsertCommand="INSERT INTO [books] ([book_name], [Book_description], [approve], [Book_image], [taken]) VALUES (@book_name, @Book_description, @approve, @Book_image, @taken)" SelectCommand="SELECT [book_id], [book_name], [Book_description], [approve], [Book_image], [taken] FROM [books]" UpdateCommand="UPDATE [books] SET [book_name] = @book_name, [Book_description] = @Book_description, [approve] = @approve, [Book_image] = @Book_image, [taken] = @taken WHERE [book_id] = @book_id">
                  <DeleteParameters>
                      <asp:Parameter Name="book_id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="book_name" Type="String" />
                      <asp:Parameter Name="Book_description" Type="String" />
                      <asp:Parameter Name="approve" Type="Decimal" />
                      <asp:Parameter Name="Book_image" Type="String" />
                      <asp:Parameter Name="taken" Type="Boolean" />
                  </InsertParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="book_name" Type="String" />
                      <asp:Parameter Name="Book_description" Type="String" />
                      <asp:Parameter Name="approve" Type="Decimal" />
                      <asp:Parameter Name="Book_image" Type="String" />
                      <asp:Parameter Name="taken" Type="Boolean" />
                      <asp:Parameter Name="book_id" Type="Int32" />
                  </UpdateParameters>
            </asp:SqlDataSource>
           
              <br />
           
              <div class="w-100">
                 
                   <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1" CssClass="table table-striped" OnRowDeleted="GridView2_RowDeleted" OnRowDeleting="GridView2_RowDeleting" OnRowUpdated="GridView2_RowUpdated" OnRowUpdating="GridView2_RowUpdating" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                       <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="book_name" HeaderText="Name" SortExpression="book_name" />
                        <asp:BoundField DataField="Book_description" HeaderText="Description" SortExpression="Book_description" />
                        <asp:TemplateField HeaderText="Image" SortExpression="Book_image">
                            <EditItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Book_image") %>'></asp:Label>
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("Book_image") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("approve") %>'>
                                    <asp:ListItem Value="1">Accept</asp:ListItem>
                                    <asp:ListItem Value="0">reject</asp:ListItem>
                                    <asp:ListItem Value="2">wait</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False" SelectedValue='<%# Eval("approve") %>'>
                                    <asp:ListItem Value="1">Accept</asp:ListItem>
                                    <asp:ListItem Value="0">reject</asp:ListItem>
                                    <asp:ListItem Value="2">wait</asp:ListItem>
                                </asp:DropDownList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
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
                 jQuery("a").filter(function () {
                     return this.innerHTML.indexOf("Delete") == 0;
                 }).click(function () {
                     return confirm("Are you sure you want to delete this Book?");
                 });
             </script>
       
              <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="book_id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Visible="False" style="width:100%" OnRowDeleted="GridView3_RowDeleted" OnRowDeleting="GridView3_RowDeleting" OnRowUpdated="GridView3_RowUpdated" OnRowUpdating="GridView3_RowUpdating">
                  <AlternatingRowStyle BackColor="White" />
                  <Columns>
                      <asp:BoundField DataField="book_name" HeaderText="Name" SortExpression="book_name" />
                      <asp:BoundField DataField="Book_description" HeaderText="Description" SortExpression="Book_description" />
                      <asp:TemplateField HeaderText="Book Image" SortExpression="Book_image">
                          <EditItemTemplate>
                              <asp:FileUpload ID="FileUpload2" runat="server" />
                              <asp:Label ID="Label4" runat="server" Text='<%# Eval("Book_image") %>'></asp:Label>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Book_image") %>' Width="100px" Height="60px" />
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
                      <asp:TemplateField HeaderText="status" SortExpression="approve">
                          <EditItemTemplate>
                              <asp:DropDownList ID="DropDownList5" runat="server" SelectedValue='<%# Bind("approve") %>'>
                                  <asp:ListItem></asp:ListItem>
                                  <asp:ListItem Value="1">Accept</asp:ListItem>
                                  <asp:ListItem Value="0">Reject</asp:ListItem>
                                  <asp:ListItem Value="2">Wait</asp:ListItem>
                              </asp:DropDownList>
                          </EditItemTemplate>
                          <ItemTemplate>
                              <asp:DropDownList ID="DropDownList4" runat="server" Enabled="False" SelectedValue='<%# Eval("approve") %>'>
                                  <asp:ListItem Value="1">Accept</asp:ListItem>
                                  <asp:ListItem Value="0">Reject</asp:ListItem>
                                  <asp:ListItem Value="2">Wait</asp:ListItem>
                              </asp:DropDownList>
                          </ItemTemplate>
                      </asp:TemplateField>
                      <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
       
        </form>
    
</body>
</html>
