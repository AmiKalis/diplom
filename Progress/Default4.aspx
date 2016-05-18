<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<script runat="server">
</script>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
      
<p class="auto-style8">
    <strong>Добавление нового предмета</strong></p>
 <p class="auto-style8">
     <strong>
     <asp:GridView ID="GridView1" runat="server">
     </asp:GridView>
     </strong>
     </p>
<p class="auto-style14">
    <span class="auto-style11">Название предмета</span>&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</p>
<p class="auto-style17">
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Добавить" Width="256px" />
</p>

    
</asp:Content>

