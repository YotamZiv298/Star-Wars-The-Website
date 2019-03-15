<%@ Page Title="יצורים" Language="C#" MasterPageFile="~/MasterPage.master" %>

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
                                    <h1 id="Top">
                                        <font style="font-family: Myriad עברית" size="30">יצורים</font></h1>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <table class="QuickView" style="height: 71px; width: 329px; font-family: Myriad עברית"
                                    cellpadding="5" border="1" dir="rtl">
                                    <tr>
                                        <td colspan="2">
                                            מעבר מהיר:
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            ווקים
                                        </td>
                                        <td>
                                            <a href="#Wookiees">לחץ</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            אנשי החול
                                        </td>
                                        <td>
                                            <a href="#TuskenRaiders">לחץ</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            אי-ווקים
                                        </td>
                                        <td>
                                            <a href="#Ewoks">לחץ</a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td id="Wookiees" colspan="2">
                                <h1>
                                    <font style="font-family: Myriad עברית">ווקים</font></h1>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p>
                                    הווקים הם מין גבוה של ענקים פרוותי מהכוכב קאשיק, אשר יכולים לגדול לגובה של כמעט
                                    שלושה מטרים.
                                    <br />
                                    הם מכוסים מכף רגל ועד ראש בשיער סמיך, שעיר, שהופיעו בגוונים של חום, שחור, אפור ולבן.
                                </p>
                                <p>
                                    לוויקים היו טפרים ששימשו אותם לטיפוס ולכל דבר אחר חוץ ממה שמפר את קוד הכבוד של ווקי.
                                    למרות הופעתם המפחידה, נחשבו הווקים לחכמים, מתוחכמים, נאמנים ובטוחים.
                                    <br />
                                    יש להם תוחלת חיים ארוכה, שיכולה להגיע ל-300 שנה.
                                </p>
                            </td>
                            <td align="center">
                                <img src="Images/Wookiees.jpg" alt="Wookiees" style="height: 331px; width: 348px" />
                            </td>
                        </tr>
                        <tr>
                            <td id="TuskenRaiders" colspan="2">
                                <h1>
                                    <font style="font-family: Myriad עברית">אנשי החול</font></h1>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p>
                                    אנשי החול היו נוודים, פרימיטיביים וילידי טטואין, ששם הם לעתים קרובות מתנחלים מקומיים.
                                </p>
                                <p>
                                    התרבות של אנשי החול הוגדרה בראש ובראשונה על ידי הקיצוניות האקלימית של טטואן: פסולת
                                    צחיחה המשתרעת לאורך המסע, רוחות צחיחות וקשות וחום צורב ביום; דממה קפואה וקפואה לאחר
                                    רדת החשכה. הישרדות היתה העדיפות הראשונה בשטח שכזה, וכדי להגן על עצמם, אנשי החול
                                    כיסו את עצמם מכף רגל ועד ראש בסמרטוטים ובגלימות מדבריות, מבלי להשאיר עור חשוף. אולי
                                    זה לא מפתיע שהציורים החיצוניים האלה הם הסימנים הבסיסיים ביותר של זהותם של שודדי
                                    המדבר - צורת הלבוש שלהם היתה, אחרי הכל, ביטוי ישיר לאורח חייהם.
                                </p>
                            </td>
                            <td align="center">
                                <img src="Images/Tusken Raiders.jpeg" alt="Tusken Raiders" style="height: 255px;
                                    width: 431px" />
                            </td>
                        </tr>
                        <tr>
                            <td id="Ewoks" colspan="2">
                                <h1>
                                    <font style="font-family: Myriad עברית">אי-ווקים</font></h1>
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <p>
                                    האי-ווקים היו כמו דובונים קטנים עם שפתיים פרוותיות וילידי היער של אנדור.
                                </p>
                                <p>
                                    הם היו הבולטים ביותר בסיוע לברית המורדים להביס את כוחות האימפריה הגלקטית בקרב על
                                    אנדור, שיאפשר להרוס את הגנרטור של המגן והרוב את כוכב המוות השני. אי-ווקים היו בגובה
                                    מטר אחד. הם השתמשו בחניתות, ובסכינים כנשק. הם השתמשו גם בדאונים ככלי רכב. אף על
                                    פי שהם היו מיומנים בהשרדות ביער ובבניית הטכנולוגיה הפרימיטיבית, עדיין לא התקדמו
                                    האי-ווקים מטכנולוגיית האבן, כאשר התגלה על ידי האימפריה. הם היו לומדים מהר, עם זאת,
                                    כאשר הם נחשפו לטכנולוגיה מתקדמת עם תהליכים מכניים הם לא הבינו.
                                </p>
                            </td>
                            <td align="center">
                                <img src="Images/Ewoks.png" alt="Ewoks" style="height: 315px; width: 329px" />
                            </td>
                        </tr>
                        <tr align="center">
                            <td colspan="2">
                                <a href="#Top">חזרה למעלה</a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
