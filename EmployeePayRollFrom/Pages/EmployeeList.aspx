<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeList.aspx.cs" Inherits="EmployeePayRollFrom.Pages.EmployeeList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 495px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        #HyperLink1{
            display:flex;
            justify-content:start;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
            <table class="auto-style1">
                <tr>
                     <td align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                         <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/Default.aspx">HOME</asp:HyperLink>
                        <asp:GridView ID="Gridview1" runat="server" CssClass="table" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" OnRowDeleting="Gridview1_RowDeleting1" GridLines="Horizontal" OnRowCancelingEdit="Gridview1_RowCancelingEdit" OnRowEditing="Gridview1_RowEditing" OnRowUpdating="Gridview1_RowUpdating" DataKeyNames="EmpID">
                    <Columns>
                <asp:BoundField HeaderText="EmployeeID" DataField="EmpID" />
                <asp:BoundField HeaderText="Employee Name" DataField="Name" />
                 <asp:TemplateField HeaderText="Employee Image" Visible="true">
                            <ItemTemplate>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("ProfileImage") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                 <asp:BoundField HeaderText="Gender" DataField="Gender" />
                 <asp:BoundField HeaderText="Department" DataField="Department" />
                 <asp:BoundField HeaderText="Salary" DataField="Salary" />
                 <asp:BoundField HeaderText="Start Date" DataField="StartDate" />
                 <asp:BoundField HeaderText="Notes" DataField="Notes" />
                <asp:CommandField ShowEditButton="true" ControlStyle-CssClass="btn btn-primary" HeaderText="Edit Record" ButtonType="Button" >


               <ControlStyle CssClass="btn btn-primary" BackColor="#0099CC" Font-Bold="True" Font-Size="Medium" Width="100px"></ControlStyle>
                </asp:CommandField>


                <asp:CommandField ShowDeleteButton="true" HeaderText="Remove Record"
                    ControlStyle-CssClass="btn btn-dan" ButtonType="Button" >
                <ControlStyle CssClass="btn btn-dan" backcolor="#0099CC" Font-Bold="True" Font-Size="Medium" Width="100px"></ControlStyle>
                </asp:CommandField>


            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#333333" />
                            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#487575" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>

                    &nbsp;
                         <br />
                         <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                             <FooterStyle BackColor="White" ForeColor="#333333" />
                             <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                             <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                             <RowStyle BackColor="White" ForeColor="#333333" />
                             <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                             <SortedAscendingCellStyle BackColor="#F7F7F7" />
                             <SortedAscendingHeaderStyle BackColor="#487575" />
                             <SortedDescendingCellStyle BackColor="#E5E5E5" />
                             <SortedDescendingHeaderStyle BackColor="#275353" />
                         </asp:GridView>
                         <br />
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Search" />

                         <br />
                         <br />

                         <br />
                         <br />
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:TextBox ID="TextBox2" runat="server" Width="130px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <br />
                         <br />
&nbsp;<asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style2" Width="130px"></asp:TextBox>
                         <br />
                         <br />
                         <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="MaleCount" />
                         <br />
                         &nbsp;<br />
                         <br />
                         <br />
                         <br />
                         <br />

                    </td>

                </tr>
            </table>
    &nbsp;</form>
</body>
</html>
