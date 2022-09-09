<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="IssuedBooks.aspx.cs" Inherits="DemonicLibrary.IssuedBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="850px">
                <Columns>
                    <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" SortExpression="Book_ID" />
                    <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" SortExpression="Student_Name" />
                    <asp:BoundField DataField="Student_Roll" HeaderText="Student_Roll" SortExpression="Student_Roll" />
                    <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                    <asp:BoundField DataField="Date_Issued" HeaderText="Date_Issued" SortExpression="Date_Issued" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [Issued_Books]"></asp:SqlDataSource>
</asp:Content>
