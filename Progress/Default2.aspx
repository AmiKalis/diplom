<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            font-size: larger;
        }
    </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p class="auto-style11">
        <strong>Просмотр упеваемости</strong></p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Surname" HeaderText="Surname" SortExpression="Surname" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Patronymic" HeaderText="Patronymic" SortExpression="Patronymic" />
                <asp:BoundField DataField="NameSubject" HeaderText="NameSubject" SortExpression="NameSubject" />
                <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                <asp:BoundField DataField="DateTime" HeaderText="DateTime" SortExpression="DateTime" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProgressConnectionString %>" SelectCommand="SELECT Student.Surname, Student.Name, Student.Patronymic, Subject.NameSubject, Mark.Mark, Mark.[DateTime] FROM Student INNER JOIN Mark ON Student.IDStudent = Mark.IDStudent INNER JOIN Subject ON Mark.IDSubject = Subject.IDSubject"></asp:SqlDataSource>
    </p>
</asp:Content>

