<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="magic12.aspx.cs" Inherits="RoomToRead.magic12" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>

         <script>
            function ShowMessage() {
                alert('You cannot delete this category because it have books');
                window.location.href = 'Admin_category.aspx';
            }
         </script>
    </form>
</body>
</html>
