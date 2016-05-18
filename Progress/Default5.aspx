<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p class="auto-style8">
        <strong>Добавление оценок</strong></p>
    <p class="auto-style8">
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProgressConnectionString %>" SelectCommand="SELECT Student.Surname, Student.Name, Student.Patronymic, Subject.NameSubject, Mark.Mark, Mark.DateTime FROM Student INNER JOIN Mark ON Student.IDStudent = Mark.IDStudent INNER JOIN Subject ON Mark.IDSubject = Subject.IDSubject"></asp:SqlDataSource>
    </p>
    <p class="auto-style8">
        Выбирите ученика&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Surname" DataValueField="IDStudent">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProgressConnectionString %>" SelectCommand="SELECT * FROM [Student]"></asp:SqlDataSource>
    </p>
    <p class="auto-style8">
        Выбирите предмет&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="NameSubject" DataValueField="IDSubject">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ProgressConnectionString %>" SelectCommand="SELECT * FROM [Subject]"></asp:SqlDataSource>
    </p>
    <p class="auto-style8">
        Введите оценку&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="37px"></asp:TextBox>
    </p>
    <p class="auto-style8">
        <asp:Button ID="Button1" runat="server" Text="Добавить" Width="331px" OnClick="Button1_Click" />
    </p>
    <p class="auto-style8">
        &nbsp;</p>
</asp:Content>

