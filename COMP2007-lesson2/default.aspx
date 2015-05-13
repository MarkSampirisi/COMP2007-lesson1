<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2007_lesson2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lesson 2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <asp:TextBox ID="txtMessage" runat="server"></asp:TextBox>
        <asp:Button ID="btnCopyText" runat="server" Text="Copy Text" OnClick="btnCopyText_Click" />
    </div>
        <div>
            <h4>List Controls</h4>
            
            <div>
                Toppings: <asp:Label ID="lblToppings" runat="server"></asp:Label>
            </div>
            <div>
                Size: <asp:Label ID="lblSize" runat="server"></asp:Label>
            </div>
            
             <asp:CheckBoxList ID="cblToppings" runat="server" OnSelectedIndexChanged="cblToppings_SelectedIndexChanged" >
                <asp:ListItem Value="1" Text="Pepperoni"></asp:ListItem>
                <asp:ListItem Value="2" Text="Eggs"></asp:ListItem>
                <asp:ListItem Value="3" Text="Love"></asp:ListItem>
                <asp:ListItem Value="4" Text="Nicolas Cage"></asp:ListItem>
            </asp:CheckBoxList>

            <asp:DropDownList ID="ddlSize" runat="server" OnSelectedIndexChanged="ddlSize_SelectedIndexChanged">
                <asp:ListItem Value="S" Text="Small"></asp:ListItem>
                <asp:ListItem Value="M" Text="Medium"></asp:ListItem>
                <asp:ListItem Value="L" Text="Large"></asp:ListItem>
                <asp:ListItem Value="XL" Text="Extra Large"></asp:ListItem>

            </asp:DropDownList>
           
            <asp:Button ID="btnToppings" runat="server" Text="Show Toppings" OnClick="btnToppings_Click" />
        </div>
    </form>
</body>
</html>
