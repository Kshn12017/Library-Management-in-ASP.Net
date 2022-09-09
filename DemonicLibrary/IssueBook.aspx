<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="IssueBook.aspx.cs" Inherits="DemonicLibrary.IssueBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <table class="auto-style1">
                <tr>
                    <td style="width: 232px"><h3>Issue Book:</h3></td>
                </tr>
                <tr>
                    <td style="width: 232px">Book ID</td>
                    <td class="auto-style2">
                        <table>
                            <tr>
                                <td  Width="300px">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Invalid Book ID" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 232px">Student Name</td>
                    <td class="auto-style2">
                        <table>
                            <tr>
                                <td Width="300px">
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field cannot be empty."></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 232px">Roll No.</td>
                    <td class="auto-style2">
                        <table>
                            <tr>
                                <td Width="300px">
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field cannot be empty."></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 232px">Class</td>
                    <td class="auto-style2">
                        <table>
                            <tr>
                                <td Width="300px">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field cannot be empty."></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 232px"></td>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center"  Width="300px">
                                    <asp:Button ID="Button1" runat="server" Text="Issue" OnClick="Button1_Click"/>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
</asp:Content>
