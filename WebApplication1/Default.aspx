<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>
       Movie website
    </h2>
    <p>
        <asp:ObjectDataSource ID="dsMovies" runat="server" SelectMethod="GetAllMovies"
        TypeName="MovieWebSite.Data.Movie" DeleteMethod="DeleteMovie"
            UpdateMethod="EditMovie">
            <DeleteParameters>
                <asp:Parameter Name="MovieID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="MovieID" Type="Int32" />
                <asp:Parameter Name="MovieName" Type="String" />
                <asp:Parameter Name="MovieDescription" Type="String" />
                <asp:Parameter Name="MovieRelease" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <asp:GridView ID="gvMovie" runat="server" AllowPaging="True"
        DataSourceID="dsMovie" AutoGenerateColumns="False" DataKeyNames="MovieID">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="MovieID" HeaderText="MovieID"
                    SortExpression="MovieID" />
                <asp:BoundField DataField="MovieName" HeaderText="MovieName"
                    SortExpression="MovieName" />
                <asp:BoundField DataField="MoiveDescription" HeaderText="MovieDescription"
                    SortExpression="MovieDescription" />
                <asp:BoundField DataField="MovieRelease" HeaderText="MovieRelease"
                    SortExpression="MovieRelease" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="AddMovie" runat="server" Text="Add"
        onclick="AddMovie_Click" />
    </p>

</asp:Content>
