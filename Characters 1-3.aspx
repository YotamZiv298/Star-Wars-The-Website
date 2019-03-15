<%@ Page Title="דמויות | הטרילוגיה החדשה" Language="C#" MasterPageFile="~/MasterPage.master" %>

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
                                        <font style="font-family: Myriad עברית" size="30">דמויות הטרילוגיה החדשה</font></h1>
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
                                                אנאקין סקייוקר
                                            </td>
                                            <td>
                                                <a href="Anakin Skywalker.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                יודה
                                            </td>
                                            <td>
                                                <a href="Yoda.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                אובי ואן קנובי
                                            </td>
                                            <td>
                                                <a href="Obi-Wan Kenobi.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                פאדמה אמידאלה
                                            </td>
                                            <td>
                                                <a href="Padmé Amidala.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                קווי-גון ג'ין
                                            </td>
                                            <td>
                                                <a href="Qui-Gon Jinn.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                גנרל גרייווס
                                            </td>
                                            <td>
                                                <a href="General Grievous.aspx">לחץ</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                הרוזן דוקו
                                            </td>
                                            <td>
                                                <a href="Count Dooku.aspx">לחץ</a>
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
