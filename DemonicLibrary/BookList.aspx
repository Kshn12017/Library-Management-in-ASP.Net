<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" Inherits="DemonicLibrary.BookList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="850px">
        <Columns>
            <asp:BoundField DataField="Book_ID" HeaderText="Book_ID" SortExpression="Book_ID" />
            <asp:BoundField DataField="Book_Name" HeaderText="Book_Name" SortExpression="Book_Name" />
            <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
        </Columns>
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" SelectCommand="SELECT * FROM [Book_List]"></asp:SqlDataSource>
</p>

</asp:Content>
