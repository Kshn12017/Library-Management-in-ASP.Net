<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="DemonicLibrary.Manage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

            <table class="auto-style1">
                <tr>
                    <td style="width: 232px"><h3>Book Details:</h3></td>
                </tr>
                <tr>
                    <td style="width: 232px">ID</td>
                    <td class="auto-style2">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field cannot be empty."></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 232px">Name</td>
                    <td class="auto-style2">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field cannot be empty." ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 232px">Genre</td>
                    <td class="auto-style2">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field cannot be empty." ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 232px">Author</td>
                    <td class="auto-style2">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field cannot be empty." ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                        </td>
                </tr>
                <tr>
                    <td style="width: 232px">Quantity</td>
                    <td class="auto-style2">
                        <table style="width: 100%">
                            <tr>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Field cannot be empty." ValidationGroup="Add"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="width: 232px"></td>
                    <td style="text-align: center">
                        <table class="auto-style1">
                            <tr>
                                <td style="width: 328px">
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" ValidationGroup="Add"/>
                                </td>
                                <td>
                        <asp:Button ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" ValidationGroup="Add" />
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 328px">
                        <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" />
                                </td>
                                <td>
                        <asp:Button ID="Button4" runat="server" Text="Cancel" OnClick="Button4_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
</asp:Content>
