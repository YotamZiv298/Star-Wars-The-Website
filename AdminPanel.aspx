<%@ Page Title="דף מנהל" Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)(Session["UserName"]) != "Admin")
            Response.Redirect("Default.aspx");
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table cellpadding="5" bgcolor="white" width="77%" border="0" dir="rtl">
            <tr>
                <td>
                    <table cellpadding="5" width="100%" border="0" dir="rtl">
                        <tr>
                            <td colspan="2">
                                <center>
                                    <h1>
                                        <font style="font-family: Myriad עברית; font-size: 50px">דף מנהל</font></h1>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <a style="color: Orange; font-size: 20px" href="UserTable.aspx">טבלת משתמשים</a>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <a style="color: Red; font-size: 20px" href="ResetMemCount.aspx">איפוס מונה משתמשים</a>
                                </center>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
