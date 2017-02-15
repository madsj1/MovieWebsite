<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="WebApplication1.AddMovie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMovie.aspx.cs" Inherits="TeamWebSite.AddPerson" MasterPageFile="~/Site.Master" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <asp:ObjectDataSource ID="dsMovie" runat="server" InsertMethod="CreateMovie"
            SelectMethod="GetAllMovies" TypeName="MovieWebsite.Data.Movie">
        </asp:ObjectDataSource>
        <asp:FormView ID="fvMovie" runat="server" DataSourceID="dsMovie"
            DefaultMode="Insert" oniteminserted="fvMovie_ItemInserted" >
            <InsertItemTemplate>
                Title:
                <br />
                <asp:TextBox ID="MovieNameTextBox" runat="server"
                    Text='<%# Bind("MovieName") %>' />
                <asp:RequiredFieldValidator ID="rfMovieName" runat="server" ControlToValidate="MovieNameTextBox" ErrorMessage="Enter Name"></asp:RequiredFieldValidator>
                <br />
                Description:
                <br />
                <asp:TextBox ID="MovieDescriptionTextBox" runat="server"
                    Text='<%# Bind("MovieDescription") %>' />
                <br />
                Age:
                <br />
                <asp:TextBox ID="MovieReleaseTextBox" runat="server"
                    Text='<%# Bind("MovieRelease") %>' />
                <br />
                <asp:RequiredFieldValidator ID="rfMovieRelease" runat="server" ErrorMessage="Enter Release date" ControlToValidate="MovieReleaseTextBox" ></asp:RequiredFieldValidator>
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True"
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server"
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
        </asp:FormView>
        <asp:ValidationSummary ID="vsMovie" runat="server" />
    </div>
</asp:Content>

</asp:Content>
