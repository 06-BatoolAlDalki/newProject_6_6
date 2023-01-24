<%@ Page Title="" Language="C#" MasterPageFile="~/noFooter.Master" AutoEventWireup="true" CodeBehind="OneTime.aspx.cs" Inherits="RoomToRead.OneTime" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
       <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up Form</title>
    <!-- Font Icon -->
    <link rel="stylesheet" href="oneTimeDonofonts/material-icon/css/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="oneTimeDonovendor/nouislider/nouislider.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="oneTimeDonocss/style.css">
    <link href="Styles/sweetalert.css" rel="stylesheet" />

    <script src="Scripts/sweetalert.min.js"></script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   
   
    
      <div class="main">
          
        <div class="container">
                <div>
                    <fieldset>
                        <h2>One Time Donations</h2>
                        <p class="desc">Please Enter Your Book Details</p>
                        <div class="fieldset-content">
                            <div class="form-row">
                                <label class="form-label">Book Name and Author</label>
                                <div class="form-flex">
                                    <div class="form-group">
                                        <input class="inputs" runat="server" type="text" name="first_name" id="book_name" />
                                        <span class="text-input">Name</span>
                                    </div>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="book_name"
                    CssClass="text-danger" ErrorMessage="The First Name field is required." />
                                    <div class="form-group">
                                        <input class="inputs"  runat="server"  type="text" name="last_name" id="Author" />
                                        <span class="text-input">Author</span>
                                    </div>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Author"
                    CssClass="text-danger" ErrorMessage="The Author Name field is required." />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email" class="form-label">Pick Up Location</label>
                                <input class="inputs"  runat="server"  type="Text" name="email" id="Address" />
                                <span class="text-input">Example:<span>Irbid,Pr. Hasan St.,Calma Space</span></span>
                            </div>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"
                    CssClass="text-danger" ErrorMessage="The Address field is required." />
                            <div class="form-group">
                                <label for="phone" class="form-label" >Brief</label>
                                <input class="inputs"  runat="server"  type="text" style="height: 150px;" name="phone" id="Brief" />
                            </div>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="Brief"
                    CssClass="text-danger" ErrorMessage="The Brief field is required." />
                            <div class="form-group">
                                <label for="phone" class="form-label" >Book Image
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                    </label>
                                  </div>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="FileUpload1"
                    CssClass="text-danger" ErrorMessage="The Image field is required." />
                             <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                 <ContentTemplate>
                              

                            <div class="form-group">
                                 <asp:CheckBox AutoPostBack="true" ID="UserCheck" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                <label style="display:inline" for="phone" class="form-label" >I Would Like to be Contacted</label>
                            </div>
                            <asp:PlaceHolder runat="server" ID="userinfo" Visible="false">
                           <label class="form-label">Name</label>
                            <div class="form-flex">
                                    <div class="form-group">
                                        <input class="inputs"  runat="server"   type="text" name="first_name" id="first_name" />
                                        <span class="text-input">First Name</span>
                                    </div>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="first_name"
                    CssClass="text-danger" ErrorMessage="The First name field is required." />
                                    <div class="form-group">
                                        <input class="inputs"  runat="server"  type="text" name="last_name" id="last_name" />
                                        <span class="text-input">Last Name</span>
                                    </div>
                                  <asp:RequiredFieldValidator runat="server" ControlToValidate="last_name"
                    CssClass="text-danger" ErrorMessage="The Last name field is required." />
                                </div>
                                  <div class="form-group">
                                <label for="email" class="form-label">Phone</label>
                                <input runat="server" class="inputs" type="Text" name="email" id="Phone" />
                                <span class="text-input">Jordanian Phone Number ,Example:<span>0777777777</span></span>
                            </div>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone"
                    CssClass="text-danger" ErrorMessage="The Phone field is required." />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="Phone" runat="server"  CssClass="text-danger" ErrorMessage="Must be a jordanian phone number Containing 10 numbers" ValidationExpression="((079)|(078)|(077)){1}[0-9]{7}"></asp:RegularExpressionValidator>
                
                                <div class="form-group">
                                <label for="email" class="form-label">Email</label>
                                <input class="inputs"  runat="server"  type="email" name="email" id="Email" />
                                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The Email field is required." />
                            </div>
                             </asp:PlaceHolder>
                                     </ContentTemplate>
                                     </asp:UpdatePanel>
                        </div>

                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/RegistrationPage.aspx" runat="server">OR Become a Volunteer</asp:HyperLink>
                        <asp:Button class="btn btn-lg btn-success" Style="float: right;" ID="Submit" runat="server" Text="Donate" OnClick="Submit_Click" />
                    </fieldset>
                </div>
        </div>

    </div>
    
    <!-- JS -->
    <script src="oneTimeDonovendor/jquery/jquery.min.js"></script>
    <script src="oneTimeDonovendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="oneTimeDonovendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="oneTimeDonovendor/jquery-steps/jquery.steps.min.js"></script>
    <script src="oneTimeDonovendor/minimalist-picker/dobpicker.js"></script>
    <script src="oneTimeDonovendor/nouislider/nouislider.min.js"></script>
    <script src="oneTimeDonovendor/wnumb/wNumb.js"></script>
    <script src="oneTimeDonojs/main.js"></script>
</asp:Content>
