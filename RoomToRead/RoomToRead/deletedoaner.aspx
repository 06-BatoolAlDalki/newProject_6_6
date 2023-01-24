<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletedoaner.aspx.cs" Inherits="RoomToRead.deletedoaner" %>



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
                alert('You cannot delete a user because he Donate by a book before');
                window.location.href = 'UsersInadminDashboard.aspx';
            }
        </script>
    </form>
</body>
</html>

