<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebApplication1.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h1>Kontakt</h1>
    <p>+41 76 672 77 08</p>
    <p>juszczynskajulia@ksb-sg.ch</p>
    <br />
    <br />
    <div class="container">
        <div class="row">
            <div class="col-lg-6 container">
                <div class="row">
                    <div id="li" class="col-lg-2">
                        <a href="https://www.linkedin.com/in/julia-juszczy%C5%84ska-409a6b247/">
                            <img src="img/linkedin_logo.png" height="40" /><br />
                            LinkedIn</a>
                    </div>
                    <div id="rp" class="col-lg-2 text-left">
                        <a href="https://replit.com/@Szczyniu">
                            <img src="img/replit_logo.png" height="40" /><br />
                            Replit</a>

                    </div>
                    <div id="gh" class="col-lg-2 text-left">
                        <a href="https://github.com/jjuszczynska">
                            <img src="img/github_logo.png" height="40" /><br />
                            GitHub</a>

                    </div>
                </div>
            </div>
            <div class="col-lg-6"></div>
        </div>

    </div>
</asp:Content>
