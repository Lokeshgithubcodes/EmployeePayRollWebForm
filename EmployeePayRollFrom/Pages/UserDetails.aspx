<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDetails.aspx.cs" Inherits="EmployeePayRollFrom.Pages.UserDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link rel="stylesheet" href="../bootstrap.css" />
    <style type="text/css">
        .button{
            display:flex;
            justify-content:flex-end;
            padding-right: 120px;
            padding-top:50px;
        }
        .button1{
            display:flex;
            justify-content:start;
            padding-left: 120px;
            padding-top: 50px;
        }
        .auto-style1 {
            display: flex;
            justify-content: flex-end;
            padding-right: 120px;
            padding-top: 50px;
            height: 176px;
        }
     </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            
            <asp:Button ID="Button2" runat="server" Text="Edit" BackColor="#99FF66" ForeColor="#0066FF" OnClick="Button2_Click" Width="70px" BorderColor="Black" Font-Bold="False" Font-Size="Medium" Height="26px" />
            
        &nbsp;<asp:Button ID="Button1" runat="server" BackColor="#99FF66" ForeColor="#0066FF" OnClick="Button1_Click" Text="Logout" BorderColor="Black" Font-Bold="False" Font-Size="Medium" Height="26px" Width="80px" />
            
        </div>
        <div class="button1">
        </div>

         <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3"   DataKeyNames="EmpId"   CellSpacing="2">
     <Columns>
         <asp:BoundField HeaderText="EmployeeID" DataField="EmpID" />
         <asp:BoundField HeaderText="Employee Name" DataField="Name" />
         <asp:TemplateField HeaderText="Employee Image" Visible="true">
            <%-- <ItemTemplate>
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PofileImage") %>' />
             </ItemTemplate>--%>
         </asp:TemplateField>
         <asp:BoundField HeaderText="Gender" DataField="Gender" />
         <asp:BoundField HeaderText="Department" DataField="Department" />
         <asp:BoundField HeaderText="Salary" DataField="Salary" />
         <asp:BoundField HeaderText="Start Date" DataField="StartDate" />
         <asp:BoundField HeaderText="Notes" DataField="Notes" />
        
         
     </Columns>
             <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
             <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
             <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
             <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
             <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#FFF1D4" />
             <SortedAscendingHeaderStyle BackColor="#B95C30" />
             <SortedDescendingCellStyle BackColor="#F1E5CE" />
             <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
       
    </form>
</body>
</html>
