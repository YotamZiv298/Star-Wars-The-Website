<%@ Page Title="דמויות | הטרילוגיה המקורית" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)(Session["UserName"]) == "אורח")
            Response.Redirect("Error.aspx");
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
                                        <font style="font-family: Myriad עברית" size="30">דמויות הטרילוגיה המקורית</font></h1>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <font size="5">
                                    <table class="Characters" style="height: 71px; width: 772px; font-family: Myriad עברית"
                                        cellpadding="5" border="1" dir="rtl">
                                        <tr>
                                            <td>
                                                לוק סקייווקר
                                            </td>
                                            <td>
                                                <a href="Luke Skywalker.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                הנסיכה ליאה
                                            </td>
                                            <td>
                                                <a href="Leia Organa.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                האן סולו
                                            </td>
                                            <td>
                                                <a href="Han Solo.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                R2-D2
                                            </td>
                                            <td>
                                                <a href="R2-D2.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                C-3PO
                                            </td>
                                            <td>
                                                <a href="C-3PO.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                צ'ובאקה
                                            </td>
                                            <td>
                                                <a href="Chewbacca.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                בובה פאט
                                            </td>
                                            <td>
                                                <a href="Boba Fett.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                ג'אבה ההאט
                                            </td>
                                            <td>
                                                <a href="Jabba the Hutt.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                דארת' ויידר
                                            </td>
                                            <td>
                                                <a href="Anakin Skywalker.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                פלפטין
                                            </td>
                                            <td>
                                                <a href="Palpatine.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                    </table>
                                </font>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
