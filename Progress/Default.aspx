<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style11 {
            height: 315px;
            width: 211px;
            background-color: #FFFFFF;
        }
        .auto-style12 {
            text-align: center;
            background-color: #FFFFFF;
            color: #000000;
        }
        .auto-style13 {
            width: 530px;
            height: 315px;
            background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <table class="auto-style2">
                <tr>
                    <td class="auto-style11">
                        <div class="auto-style6">
                            <img class="auto-style7" src="img.jpg" /><br />
                            <br />
                            <strong><span class="auto-style8"><span class="auto-style9">Навигация
                            по сайту</span><br />
                            </span></strong>
                        </div>
                        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1" ImageSet="WindowsHelp">
                            <HoverNodeStyle Font-Underline="True" ForeColor="#6666AA" />
                            <NodeStyle Font-Names="Tahoma" Font-Size="8pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="1px" />
                            <ParentNodeStyle Font-Bold="False" />
                            <SelectedNodeStyle BackColor="#B5B5B5" Font-Underline="False" HorizontalPadding="0px" VerticalPadding="0px" />
                        </asp:TreeView>
                        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                    </td>
                    <td class="auto-style13">
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12" colspan="2"><em><strong>2016</strong></em></td>
                </tr>
            </table>
        
        </asp:Content>


