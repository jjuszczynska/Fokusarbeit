<%@ Page Title="Index" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div class="row">
        <br />
        <div class="col-lg-6">
            <img src="img/innosolv_logo.png" />
        </div>
        <div class="col-lg-6">
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
                Donec efficitur, ex at congue faucibus, justo eros tincidunt est, et facilisis mi mi eget risus.<br>
                Mauris eget viverra lectus.<br>
                Fusce leo metus, pulvinar non turpis in, accumsan vehicula metus.<br>
                Sed quis neque fermentum, vulputate augue quis, dictum neque.<br>
                Mauris convallis, nisi sed tincidunt facilisis, risus nunc scelerisque nisl, a tempus erat neque ac metus.<br>
            </p>
            <a href="Form.aspx" class="btn btn-primary">Formular</a>
            <a href="Login.aspx" class="btn btn-primary">Login</a>
        </div>
    </div>


</asp:Content>
