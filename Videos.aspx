<%@ Page Title="גלריה | סרטונים" Language="C#" MasterPageFile="~/MasterPage.master" %>

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
                    <table class="Videos" cellpadding="5" width="100%" border="1" dir="rtl">
                        <tr>
                            <td colspan="3">
                                <center>
                                    <h1>
                                        <font style="font-family: Myriad עברית" size="30">סרטונים</font></h1>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>לוק ואובי ואן פוגשים את האן סולו בקנטינה
                                        של מוס אייסלי</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/g6PDcBhODqo?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>מקהלת הקנטינה של מוס אייסלי</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/JaPf-MRKITg?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>לוק פוגש את אובי ואן</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/tpJnMVKO6Vo?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>הקרב על הות'</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube-nocookie.com/embed/9Mj7c1DEQ00?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>הקרב על קרייט</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube-nocookie.com/embed/2d0n8GEE5W4?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>דארת' ויידר פולש לספינת המורדים</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube-nocookie.com/embed/wxL8bVJhXCM?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>ההקפאה של האן סולו</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/qND0aIXOLbw?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>הקרב בין אובי ואן לדארת' ויידר</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/sq51w34Hg9I?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>הריסת כוכב המוות הראשון</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/2WBG2rJZGW8?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>לוק פוגש את יודה</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/rlKoiJu9TsQ?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>הקרב בין לוק לויידר שכולל את "אני אבא שלך"</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/RgDPi5WvC8M?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                            <td>
                                <center>
                                    <font style="font-family: Myriad עברית"><b>המוות של יודה</b></font>
                                    <br />
                                    <iframe style="height: 217px; width: 362px" frameborder="0" src="https://www.youtube.com/embed/5ZK57xBaGwM?rel=0"
                                        allowfullscreen></iframe>
                                </center>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
