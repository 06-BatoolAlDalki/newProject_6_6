<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactOwner.aspx.cs" Inherits="RoomToRead.ContactOwner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/ContactOwner.css" />
    <style>


        .info {
            font-size:18px;
            font-weight:600;
        }
        .line {
         border-left: 1px solid black;
        height: 350px;
        text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-Flex">
        <div>
            <div style="text-align:center"><i class="fa-solid fa-book-open" style="font-size:30px"></i> </div>
            <br />
        <div class="info" style="text-align:center">Owner Information</div>
            <br/>
        <div class="info" style="text-align:center">&</div>
             <br/>

        <div class="info" >Requested Book Information</div>
            </div>
        <div class="line"></div>
    <div class="profile">
     
  <header class="header">
    <div class="details">
      <img runat="server" style="height:200px; width:200px" id="ownerImage" src="https://images.unsplash.com/photo-1517365830460-955ce3ccd263?ixlib=rb-0.3.5&q=85&fm=jpg&crop=entropy&cs=srgb&ixid=eyJhcHBfaWQiOjE0NTg5fQ&s=b38c22a46932485790a3f52c61fcbe5a" alt="John Doe" class="profile-pic">
      <h1 class="heading" runat="server" id="ownerName">Claire Doe</h1>
      <div class="location">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
  <path d="M12,11.5A2.5,2.5 0 0,1 9.5,9A2.5,2.5 0 0,1 12,6.5A2.5,2.5 0 0,1 14.5,9A2.5,2.5 0 0,1 12,11.5M12,2A7,7 0 0,0 5,9C5,14.25 12,22 12,22C12,22 19,14.25 19,9A7,7 0 0,0 12 ,2Z"></path>
</svg>
        <p runat="server" id="Location">Kochi, India</p>
      </div>
      <div class="stats">
        <div class="col-4">
          <span style="font-size:14px" runat="server" id="email"></span>
          <p >Email</p>
        </div>
        <div class="col-4">
          <span style="font-size:14px"  runat="server" id="Phone"></span>
          <p>Phone</p>
        </div>
      </div>
    </div>

  </header>
</div>
 
 <div class="card mb-3">
  <img runat="server" id="bookImage" style="height:300px; width:400px"  src="..." class="card-img-top" alt="...">
  <div class="card-body">
    <h5 runat="server" id="BookTitle" class="card-title">Card title</h5>
   
  </div>
</div>
</div>
</asp:Content>
