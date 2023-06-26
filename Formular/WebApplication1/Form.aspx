<%@ Page Title="Formular" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="WebApplication1.Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <h1>Formular</h1>
    <div class="form-group">
        <asp:Label ID="Kurs" runat="server" Text="Wähle den Kurs aus"></asp:Label>
        <asp:DropDownList ID="ddKurs" runat="server" DataSourceID="SqlDataSource" DataTextField="Kursname" DataValueField="Kursname">
            <asp:ListItem Text="Option 1" Value="1"></asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>" SelectCommand="SELECT [Kursname] FROM [TrainingCourses]"></asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="rfvKurs" runat="server" ControlToValidate="ddKurs" ErrorMessage="Bitte wähle einen Kurs aus." Text="*" CssClass="text-danger"></asp:RequiredFieldValidator>
    </div>
    <br />
    <div class="form-group">
        <asp:Label ID="Note" runat="server" Text="Welches Note würden Sie uns geben?"></asp:Label>
        <div class="form-check">
            <asp:RadioButtonList ID="rbNote" runat="server" CssClass="form-inline">
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
                <asp:ListItem Text="6" Value="6"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="rfvNote" runat="server" ControlToValidate="rbNote" ErrorMessage="<br/>Eine Option muss ausgewält sein!" Text="*" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
    </div>
    <br />
    <div class="form-group">
        <asp:Label ID="Best" runat="server" Text="Was hat Ihnen am besten gefallen?"></asp:Label>
        <asp:TextBox ID="tbBest" runat="server" CssClass="form-control" Rows="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvBest" ErrorMessage="<br/>Feld muss augefüllt sein!" ControlToValidate="tbBest" runat="server" Display="None" />
    </div>
    <br />
    <div class="form-group">
        <asp:Label ID="Worst" runat="server" Text="Was hat Ihnen am wenigsten gefallen?"></asp:Label>
        <asp:TextBox ID="tbWorst" runat="server" CssClass="form-control" Rows="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvWorst" ErrorMessage="<br/>Feld muss augefüllt sein!" ControlToValidate="tbWorst" runat="server" Display="None" />
    </div>
    <br />
    <div class="form-group">
        <asp:Label ID="Proposal" runat="server" Text="Wie können wir das nächstes Mal besser machen?"></asp:Label>
        <asp:TextBox ID="tbProposal" runat="server" CssClass="form-control" Rows="3"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvProposal" ErrorMessage="<br/>Feld muss augefüllt sein!" ControlToValidate="tbProposal" runat="server" Display="None" />
    </div>


    <asp:Button ID="btnSend" runat="server" Text="Senden" type="submit" OnClick="onSend" CssClass="btn btn-primary" />
</asp:Content>
