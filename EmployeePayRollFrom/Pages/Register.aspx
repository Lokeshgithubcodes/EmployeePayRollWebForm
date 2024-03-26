<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="EmployeePayRollFrom.Pages.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../bootstrap.css" />
    <style type="text/css">
        .container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}
        .auto-style1 {
            width: 165%;
        }
        .auto-style5 {
            height: 45px;
        }
        .auto-style9 {
            width: 50%;
        }
        #form1{
            background-color:aliceblue;
            padding-left:20px;
            width:1000px;
            
            
        }
        h1{
            text-align:center;
            justify-content:center;
            padding-right:300px;
        }
        .auto-style27 {
            height: 100px;
        }
        .auto-style28 {
            height: 59px;
            width: 1px;
        }
        .auto-style29 {
            height: 59px;
            width: 1154px;
        }
        .auto-style30 {
            height: 60px;
            width: 1px;
        }
        .auto-style31 {
            height: 60px;
            width: 1154px;
        }
    </style>
</head>
<body style="height: 678px">
    <div class="container">
        <div class="form-container">
        <form id="form1" runat="server">
        <div style="margin: 0 auto; " class="auto-style9">
            <table class="auto-style1">
             
                <tr>
                    <td class="auto-style27" colspan="2">
                        <div>
                            <h1>Employee PayRoll Form</h1>
                        </div>
                    </td>
                </tr>
             
                <tr>
                    <td class="auto-style28">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Name" Width="144px"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" Width="296px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" Text="Profile image" Width="140px"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:RadioButton runat="server" ID="RadioButton1" /><asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/rollimg1.png" Width="25px" />
&nbsp;&nbsp;
                        <asp:RadioButton runat="server" ID="RadioButton2" /><asp:Image ID="Image2" runat="server" ImageUrl="~/Assets/rollimg2.png" Width="25px" />
&nbsp;
                        <asp:RadioButton runat="server" ID="RadioButton3" /><asp:Image ID="Image3" runat="server" ImageUrl="~/Assets/rollimg4.png" Width="25px" />
&nbsp;
                        <asp:RadioButton runat="server" ID="RadioButton4" /><asp:Image ID="Image4" runat="server" ImageUrl="~/Assets/rollimg5.png" Width="25px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" Text="Gender" Width="100px"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" Text="Department" Width="100px"></asp:Label>
                    </td>
                    <td class="auto-style31">&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Bold="True" Font-Size="Medium" Width="150px">
                            <asp:ListItem>select</asp:ListItem>
                            <asp:ListItem>HR</asp:ListItem>
                            <asp:ListItem>Sales</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" Text="Salary" Width="100px"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28">
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" Text="Start Date" Width="100px"></asp:Label>
                    </td>
                    <td class="auto-style29">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30">
                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" Text="Notes" Width="100px"></asp:Label>
                    </td>
                    <td class="auto-style31">
                        <asp:TextBox ID="TextBox3" runat="server" Height="112px" Width="409px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" BackColor="#99FF66" BorderColor="Black" Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" Text="Cancel" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" BackColor="#99FF66" BorderColor="Black" Font-Bold="True" Font-Size="Medium" ForeColor="#0066FF" OnClick="SubmitRegister_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                </table>
        </div>
    </form>
        </div>
        </div>
</body>
</html>
