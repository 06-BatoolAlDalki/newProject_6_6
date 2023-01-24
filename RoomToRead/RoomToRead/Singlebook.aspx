<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Singlebook.aspx.cs" Inherits="RoomToRead.Singlebook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <script src="https://kit.fontawesome.com/e869edadc1.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <style>
        ul li a {
            color:#fff !important;
        }
        body{
            background-image:url('img/R6.jfif');
            background-repeat:no-repeat;
            background-size:cover;
          
        }
    </style>
</head>
<body  >
    
        
       <form id="form1" runat="server">

    
    

      
    <nav class="navbar navbar-expand-lg " style="background-color:#45B08E">
<div class="container-fluid">
  <a class="navbar-brand" href="Home.aspx"><img style="width:50px; height:50px" src="Images/Navlogo.png" /></a>
  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
 <span class="text-white me-4"> Room To Read</span>
  <div class=" collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav ms-auto ">
      <li class="nav-item">
        <a class="nav-link mx-2 active" aria-current="page" href="Home.aspx">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link mx-2" href="Category.aspx">Category</a>
      </li>
    
          <li class="nav-item"><a class="nav-link mx-2" href="AboutUs.aspx">About Us</a></li>
          <li class="nav-item"><a class="nav-link mx-2" href="ContactUs.aspx">Contact us</a></li>
            <li class="nav-item">
        <a class="nav-link mx-2" id="LogIn" runat="server" href="LoginPage.aspx">Login</a>
      </li>
        <li class="nav-item">
            <a Visible="false" id="UserProfile" runat="server" class="nav-link mx-2" href="UserProfile.aspx">Profile</a>

        </li>
         <li class="nav-item">
           <asp:LinkButton Visible="false" class="nav-link mx-2" ID="LogOut" OnClick="Logout" runat="server">Logout</asp:LinkButton>
      </li>
        
    </ul>
  </div>
</div>
</nav>

    
<%--       <%#Eval("Book_image")%>--%>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RoomToReadConnectionString %>" SelectCommand="SELECT [Book_description], [book_name], [Book_image], [author] FROM [books] WHERE ([book_id] = @book_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="book_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
         </asp:SqlDataSource>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="Repeater1_ItemCommand">
<ItemTemplate>
       <div style=" width:80%; height:500px ; position:relative; margin-top:5%;margin-left:10%; border-radius:12px;  margin-bottom:5% " >
         
             <asp:Image ID="main_product_image" runat="server" ImageUrl='<%#Eval("Book_image")%>' Width="40%" Height="400px"  style="display:inline-block ; margin-top:50px ; margin-left:50px; border-radius:9px"/>
           <div style="width:40%; height:400px ;position:absolute; left:55% ; display:inline-block ;margin-top:50px;border-radius:12px; border:3px solid #45B08E  ">
               <br />
               <br />
               <br />
               <asp:Label ID="Label1" runat="server" Text="Book Name :" style="font-size:x-large; font-weight:bold; font-family:'Times New Roman';font-style:italic;color:#45B08E ; margin-left:10% ; margin-top:40%">

               </asp:Label>
                <asp:Label ID="Label2" runat="server" Text='<%#Eval("book_name")%>' ></asp:Label>
               <br />
               <br />
                <asp:Label ID="Label3" runat="server" Text="Book Descrition :" style="font-size:x-large; font-weight:bold; font-family:'Times New Roman';font-style:italic;color:#45B08E ; margin-left:10% ; margin-top:40%">

               </asp:Label>
                <asp:Label ID="Label4" runat="server" Text='<%#Eval("Book_description")%>' ></asp:Label>
               <br />
               <br />
                <asp:Label ID="Label5" runat="server" Text="Book Author :" style="font-size:x-large; font-weight:bold; font-family:'Times New Roman';font-style:italic;color:#45B08E ; margin-left:10% ; margin-top:40%">

               </asp:Label>
                <asp:Label ID="Label6" runat="server" Text='<%#Eval("author")%>' ></asp:Label>
               <br />
               <br />
               <br />
               <br />

                <div  style=" margin-left:10%">	
                            <asp:Button  ID="Button2" runat="server" Text="Back" style="background-color:#49796b ; padding:10px ; border-radius:12px ;color:white ; border:none" />
                            <asp:Button OnClick="RequestBook"  ID="Button1" runat="server" Text="Book Request" style="background-color:#49796b;margin-left:20px ;padding:10px ;border-radius:12px ;color:white ; border:none" />

                        </div>	
      
           </div>
       </div>
    
                 </ItemTemplate>
             </asp:Repeater>
       <%--<asp:Image runat="server" ImageUrl="img\single.jpg" Width="40%" Height="400px" style="margin:5% ; border-radius:12px ; display:inline-block" ></asp:Image>


       <div style="display:inline-block; background-color:aqua; width:30% ;height:400px;margin:5% "> </div>--%>
       <br />
      
       </form>
       <br />
    <br />
       </body>
</html>

       
          <footer 
          class="text-center text-lg-start text-dark"
          style="background-color: #45B08E;"
          >
    <!-- Section: Social media -->
    <section class="d-flex justify-content-between p-4 text-white" style="background-color: #45B08E">
      <!-- Left -->
      <div class="me-5">
        <span>Get connected with us on social networks:</span>
      </div>
      <!-- Left -->

      <!-- Right -->
      <div>
        <a href="#" class="text-white me-4">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-google"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="#" class="text-white me-4">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold text-white">Room To Read</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p class="text-white">
             Our site was designed and made to serve readers who love to read but do not have the books they need or for students who cannot get a book
            </p>
          </div>
          <!-- Grid column -->

          
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold text-white">Useful links</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p>
              <a href="qq.aspx" class="text-white">Donate with us</a>
            </p>
            <p>
              <a href="AboutUs.aspx" class="text-white">About us</a>
            </p>
            <p>
              <a href="#!" class="text-white">Contact Us</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold text-white">Contact</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p class="text-white"><i class="fas fa-home mr-3"></i> Amman,Jordan</p>
            <p class="text-white"><i class="fas fa-envelope mr-3"></i> RoomToRead@Gmail.com</p>
            <p class="text-white"><i class="fas fa-phone mr-3"></i> +962 778095488</p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div
         class="text-center p-3 text-white"
         style="background-color: #45B08E"
         >
      © 2020 Copyright:
      <a class="text-white" href="https://mdbootstrap.com/"
         >@CopyRight RoomToRead</a
        >
    </div>
    <!-- Copyright -->
  </footer>

   
