<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_category.aspx.cs" Inherits="RoomToRead.dashboard" %>


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
                <a href="request_Books_Admin.aspx" >
                    <span class="icon">
                        <i class="fa fa-book"></i>
                                        
                    </span>
                    <span class="item">Books</span>
                </a>
            </li>

            <li>
                <a href="Admin_category.aspx" class="active">
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
                <h3>Category</h3>
        </div>

        </div>
    
   <main>

  <div class="con">
      
      <i class="fa-solid fa-sort"></i>

                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([category_description], [category_name], [catergoy_image], [status12], [update12]) VALUES (@category_description, @category_name, @catergoy_image, @status12, @update12)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [category_description] = @category_description, [category_name] = @category_name, [catergoy_image] = @catergoy_image, [status12] = @status12, [update12] = @update12 WHERE [category_id] = @category_id">
                   <DeleteParameters>
                       <asp:Parameter Name="category_id" Type="Int32" />
                   </DeleteParameters>
                   <InsertParameters>
                       <asp:Parameter Name="category_description" Type="String" />
                       <asp:Parameter Name="category_name" Type="String" />
                       <asp:Parameter Name="catergoy_image" Type="String" />
                       <asp:Parameter Name="status12" Type="String" />
                       <asp:Parameter Name="update12" Type="String" />
                   </InsertParameters>
                   <UpdateParameters>
                       <asp:Parameter Name="category_description" Type="String" />
                       <asp:Parameter Name="category_name" Type="String" />
                       <asp:Parameter Name="catergoy_image" Type="String" />
                       <asp:Parameter Name="status12" Type="String" />
                       <asp:Parameter Name="update12" Type="String" />
                       <asp:Parameter Name="category_id" Type="Int32" />
                   </UpdateParameters>
               </asp:SqlDataSource>
<%--              Normal Text--%>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Category"  style="margin-left:30% ;background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Edit and Delete Category" OnClick="Button3_Click"  style="background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px" />
                <br />
              <br />
              <br />
                <div runat="server" visible="false" id="add" style="margin-left:35% ;margin-top:3%; border:2px solid #45B08E ; padding-left:42px; width:30% ; border-radius:12px 12px ;padding-top:33px;padding-bottom:13px">
                  <asp:Label ID="Label4" runat="server" Text="Add Category" Style="font-weight:bold ; font-style:italic ;margin-left:15% ;" ></asp:Label>
              <br />
                    <br /><asp:Label ID="Label3" runat="server" Text="Category name :" Style="font-weight:bold ; font-style:italic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1"></asp:TextBox>
                <br />
                <br />
                    <br />
                <asp:Label ID="Label2" runat="server" Text="Description :" Style="font-weight:bold ; font-style:italic"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
               <br /><br />
                <asp:Label ID="Label1" runat="server" Text="Upload Category Image :" Style="font-weight:bold ; font-style:italic"></asp:Label>  <asp:FileUpload ID="FileUpload2" runat="server" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
              
                <br />
&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" style="background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px ;width:30%"  />
                            
                    <br />
                       
                    </div>
                <div id="editAnddelete" runat="server" visible="false" class="w-100" >
                    <br />
                    <br />

                &nbsp;<asp:Label ID="Label5" runat="server" Text="Search of Category Name " style="margin-left:30%;font-size:large;font-weight:bold; color:#1C5E55 ;font-family:'Times New Roman'"></asp:Label>
             
                    <asp:TextBox ID="TextBox6" runat="server" AutoPostBack="True" OnTextChanged="TextBox6_TextChanged" placeholder="Category Name"  style="margin-left:1%"  ></asp:TextBox>
&nbsp;&nbsp;
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([category_description], [category_name], [catergoy_image]) VALUES (@category_description, @category_name, @catergoy_image)" SelectCommand="SELECT * FROM [category] WHERE ([category_name] LIKE '%' + @category_name + '%')" UpdateCommand="UPDATE [category] SET [category_description] = @category_description, [category_name] = @category_name, [catergoy_image] = @catergoy_image WHERE [category_id] = @category_id">
                        <DeleteParameters>
                            <asp:Parameter Name="category_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="category_description" Type="String" />
                            <asp:Parameter Name="category_name" Type="String" />
                            <asp:Parameter Name="catergoy_image" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox6" Name="category_name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="category_description" Type="String" />
                            <asp:Parameter Name="category_name" Type="String" />
                            <asp:Parameter Name="catergoy_image" Type="String" />
                            <asp:Parameter Name="category_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
    
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox5" runat="server" style="place-itemsmargin-left:33%" Visible="false"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" visible="false" />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [category] WHERE [category_id] = @category_id" InsertCommand="INSERT INTO [category] ([category_id], [category_description], [category_name], [catergoy_image]) VALUES (@category_id, @category_description, @category_name, @catergoy_image)" SelectCommand="SELECT * FROM [category] WHERE ([category_name] LIKE '%' + @category_name2 + '%')" UpdateCommand="UPDATE [category] SET [category_description] = @category_description, [category_name] = @category_name, [catergoy_image] = @catergoy_image WHERE [category_id] = @category_id">
                        <DeleteParameters>
                            <asp:Parameter Name="category_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="category_id" Type="Int32" />
                            <asp:Parameter Name="category_description" Type="String" />
                            <asp:Parameter Name="category_name" Type="String" />
                            <asp:Parameter Name="catergoy_image" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="TextBox5" Name="category_name2" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="category_description" Type="String" />
                            <asp:Parameter Name="category_name" Type="String" />
                            <asp:Parameter Name="catergoy_image" Type="String" />
                            <asp:Parameter Name="category_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

               <%--<asp:Button ID="Button5" runat="server"  Text="Show Category" style="background-color:#49796b ; color:white ;border:2px solid #49796b ; border-radius:12px 12px ;padding:10px ;margin-left:5%;width:44%" OnClick="Button5_Click"  />--%>
                            
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="category_id" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" CssClass="table table-striped ;    " CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" OnRowDeleting="GridView2_RowDeleting" >
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="category_id"  HeaderText="Id <i class='fa-solid fa-sort'></i> "  ReadOnly="True" SortExpression="category_id" InsertVisible="False" />
                            <asp:BoundField DataField="category_description" HeaderText="Description" SortExpression="category_description" />
                            <asp:BoundField DataField="category_name" HeaderText="Name" SortExpression="category_name" />
                            <asp:TemplateField HeaderText="Image" SortExpression="catergoy_image">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("catergoy_image") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("catergoy_image") %>' />
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
    

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="category_id" DataSourceID="SqlDataSource1" OnRowUpdating="GridView1_RowUpdating" ForeColor="#333333" OnRowDeleting="GridView1_RowDeleting" CssClass="table table-striped" OnRowUpdated="GridView1_RowUpdated" OnRowDeleted="GridView1_RowDeleted" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"   >
                        <AlternatingRowStyle BackColor="White" />
                   <Columns> 
                       <asp:TemplateField HeaderText=" Id" InsertVisible="False" SortExpression="category_id">
                           <EditItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("category_id") %>'></asp:Label>
                           </EditItemTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Bind("category_id") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:BoundField DataField="category_name" HeaderText=" Name" SortExpression="category_name" />
                       <asp:BoundField DataField="category_description" HeaderText="Description" SortExpression="category_description" />
                       <asp:TemplateField HeaderText=" Image" SortExpression="catergoy_image">
                           
                           <EditItemTemplate>
                               <asp:Label ID="Label6" runat="server" Text='<%# Eval("catergoy_image") %>' Visible="False"></asp:Label>
                               <asp:FileUpload ID="FileUpload4" runat="server" />
                           </EditItemTemplate>
                           
                           <ItemTemplate>
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("catergoy_image")%>' Width="100px" Height="60px"  />
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:CommandField ShowEditButton="True" />
                       <asp:HyperLinkField DataNavigateUrlFields="category_id" DataNavigateUrlFormatString="magic12.aspx?id={0}" Text="Delete" />
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
                 jQuery("a").filter(function () {
                     return this.innerHTML.indexOf("Delete") == 0;
                 }).click(function () {
                     return confirm("Are you sure you want to delete this category?");
                 });
             </script>
       
        </form>
    
</body>
</html>
