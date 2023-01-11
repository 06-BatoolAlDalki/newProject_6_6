<%@ Page Title="" Language="C#" MasterPageFile="~/noFooter.Master" AutoEventWireup="true" CodeBehind="qq.aspx.cs" Inherits="RoomToRead.qq" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
     <script type="text/javascript"></script>
    <link href="Styles/sweetalert.css" rel="stylesheet" />
    <script src="Scripts/sweetalert.min.js"></script>
    <style>

        #img{
            width:1050px ;height:480px !important 
        }
        @media only screen and (max-width: 762px) {
        #d{
            width:100% ;
        }

        
        #img{
            width:300px ;height:280px !important 
        }

        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
      <div id="d" class=" container d-flex  ">
               <div class="col-md-12 col-sm-12" style="gap:10px ;margin:0px -30px">

             
                                         <div class="container  col-sm-12" >
                                             
                                             <img id="img" src ="imgg\\33.jpg"/>


                                              <h1 style="justify-content:center ; display:flex;" runat="server" id="name" >Donate now</h1>
                                             <h6 style="justify-content:center ; display:flex;"  runat="server" id="wll"> in simple steps</h6>
                                             <br /><br />
                                              
</div>  
                   <div class="col-sm-12">
                                             <div class=" container col-lg-12 col-sm-12 " >
                                               
<div class="row  ">
  <div class="col coll-sm-6 ">
    <!-- Name input -->
    <div class="form-outline  col-sm-12">

        <asp:TextBox  placeholder=" Book Title " ID="TextBox1" class="form-control" runat="server"></asp:TextBox>
        
    </div>
  </div>
  <div class="col coll-sm-6 ">
    <!-- Email input -->
    <div class="form-outline">
          
       <asp:TextBox ID="TextBox2" placeholder="Name of the Author" class="form-control" runat="server"></asp:TextBox>
      
    </div>
  </div>
</div>
<br /><br />
<div class="row">
 <div class="col">

      <div class="custom-file">
       <label>image</label>
 <asp:FileUpload ID="FileUpload1" runat="server" class="custom-file-input" />
    <label class="custom-file-label" for="inputGroupFile04">Choose image</label>
  </div>
  <div class="input-group-append">
    
  </div>
</div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

      </div>
</div>
    <div class="row">
 <div class="col">
    <div class="dropdown">
        <asp:Label style="margin-left:20px" ID="Label2" runat="server" Text="Choose a category :
"></asp:Label>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Category_Name], [Category_id] FROM [Category]"></asp:SqlDataSource>
      
                        <asp:DropDownList aria-labelledby="dropdownMenuButton"    style="  
                             background-color: seagreen;
  color: white;
  border-radius:4px;
  font-size: 16px;
  border: none;
  cursor: pointer;
  height:37px;
  width:140px ;
  margin-left:30px;
                            "   class=" dropdown-menu btn  btn-secondary dropdown-toggle  "  ID="DropDownList2" runat="server" CssClass="TextBoxAll" DataSourceID="SqlDataSource1" DataTextField="Category_Name" DataValueField="Category_id">
   
                         </asp:DropDownList>

</div>
     </div>
     
        </div>
                   <br /><br />
                      <div class="col">
         <div class="form-group green-border-focus">
    
  <textarea runat="server" class="form-control"  placeholder="Description of the book ..." Id="txt" rows="3"></textarea>
</div></div>


 
    <br /><br /><hr /><br />
                   
                   <asp:Button style="  
                             background-color: seagreen;color:white" class="btn  btn-block mb-4"  ID="btnUpload" runat="server" Text="Donate" OnClick="btnUpload_Click" />
   

</div></div>
 <script type="text/javascript">
     function successalert() {
         swal({
             title: 'Perfect Working',
             text: 'You  donated successfully',
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
</asp:Content>
