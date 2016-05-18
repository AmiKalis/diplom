<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style10 {
        font-size: larger;
    }
    .auto-style11 {
        font-size: smaller;
    }
        .auto-style14 {
            font-size: larger;
            height: 27px;
            width: 224px;
            background-color: #CCFFCC;
        }
        .auto-style15 {
            font-size: larger;
            height: 26px;
            width: 223px;
            background-color: #CCFFCC;
        }
        .auto-style16 {
            font-size: larger;
            height: 27px;
            width: 226px;
            background-color: #CCFFCC;
        }
        .auto-style17 {
            font-size: larger;
            height: 35px;
            width: 226px;
            background-color: #CCFFCC;
        }
        </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <strong><span class="auto-style8">Добавление нового ученика</span></strong><br />
    <p class="auto-style8"><strong><asp:GridView ID="GridView1" runat="server">
    </asp:GridView></strong></p>
<p class="auto-style14">
    <span class="auto-style11">Фамилия</span>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p class="auto-style15">
    <span class="auto-style11">Имя </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</p>
<p class="auto-style16">
    <span class="auto-style11">Отчество</span>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p class="auto-style17">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" Width="201px" />
</p>
</asp:Content>

