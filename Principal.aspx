<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Principal.aspx.cs" Inherits="Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>

    <style>
        * {
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-size: 25px;
            padding-left: 15px;
        }

        h1 {
            text-align: center;
            padding: 0px;
            color: darkcyan;
            font-size: 28px;
        }
    </style>

    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="bemvindo" runat="server"><h1>Login Bem-Sucedido!!</h1></asp:Label>
            <hr style="width: 20%;"/>
            <br />
            <br />
            <asp:Label ID="id" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="nome" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="email" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="senhacrip" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
