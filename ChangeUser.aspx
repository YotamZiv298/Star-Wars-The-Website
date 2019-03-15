<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        String Nickname = Request.QueryString["Nickname"].ToString();
        
        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"DATA\SiteDB.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Select * from UsersOfWebsite where Nickname = '{0}';", Nickname);
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        da.Fill(dt);
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
<script type="text/javascript">
    function CheckForm() {
        if (CheckName(FirstName, 'שם פרטי') &&
            CheckName(LastName, 'שם משפחה') &&
            CheckRadio("Gender", 'מין') &&
            CheckPhone(Phone, 'טלפון') &&
            CheckEmail(Email) &&
            CheckPassword(Pass, 'סיסמא', 4, 12) &&
            CheckVerify(Pass, Verify, 'אימות סיסמא'))
            return true;
        return false;
    }

    function CheckName(Name, Text) {
        var strName = Name.value;
        var i, letter;

        if (strName.length == 0) {
            alert("הכנס " + Text);
            Name.select();
            return false;
        }
        for (i = 0; i < strName.length; i++) {
            letter = strName.charAt(i);
            if (!(letter >= 'א') && (letter <= 'ת')) {
                alert("הכנס " + Text + " תקין בעברית");
                Name.select();
                return false;
            }
        }
        if (strName.length < 2) {
            alert(Text + " קצר מידי");
            Name.select();
            return false;
        }
        return true;
    }

    function CheckRadio(Name, Text) {
        var Radio = false, i;
        var Gndr = document.getElementsByName(Name);

        for (i = 0; i < Gndr.length; i++)
            if (Gndr[i].checked) {
                Radio = true;
                return true;
            }
        if (!Radio) {
            alert("בחר מין");
            return false;
        }
    }

    function CheckPhone(Number, Text) {
        var str = Number.value;
        var i, letter;

        if (str.length == 0) {
            alert("הכנס מספר " + Text);
            Number.select();
            return false;
        }
        for (i = 0; i < str.length; i++) {
            letter = str.charAt(i);
            if ((letter < '0') || (letter > '9')) {
                alert("הכנס מספר " + Text + " תקין");
                Number.select();
                return false;
            }
        }
        if (str.length != 7) {
            alert("הכנס מספר " + Text + " תקין בן 7 ספרות");
            Number.select();
            return false;
        }
        return true;
    }

    function CheckEmail(Email) {
        var str = Email.value;
        var i, letter;

        if (str.length == 0) {
            alert("הכנס אימייל");
            Email.select();
            return false;
        }
        for (i = 0; i < str.length; i++) {
            letter = str.charAt(i);
            if (!(((letter >= 'A') && (letter <= 'Z')) || ((letter >= 'a') && (letter <= 'z')) || ((letter >= '0') && (letter <= '9')) || (letter == '.') || (letter == '@') || (letter == '_') || (letter == '-'))) {
                alert("הכנס אימייל תקין");
                Email.select();
                return false;
            }
        }

        var EmailInput = str.split("@");

        if (EmailInput.length == 1) {
            alert("חייב להיות @");
            Email.select();
            return false;
        }
        else
            if (EmailInput.length > 2) {
                alert("חייב להיות רק @ אחד");
                Email.select();
                return false;
            }

        var BeforeShtrudel = EmailInput[0];

        BeforeShtrudel = BeforeShtrudel.split(".");
        if (BeforeShtrudel.length > 2) {
            alert("מותר עד נקודה אחת לפני ה- @");
            Email.select();
            return false;
        }
        else {
            if (BeforeShtrudel.length == 1 || BeforeShtrudel.length == 0) {
                if (BeforeShtrudel[0].length < 2) {
                    alert("צריך לפחות 2 תווים לפני ה- @");
                    Email.select();
                    return false;
                }
            }
            else
                if (BeforeShtrudel.length == 2)
                    if (BeforeShtrudel[0].length < 2 || BeforeShtrudel[1].length < 2) {  //מקרה שיש נקודה אחת בודק שיש לפחות 2 תווים לפני ואחרי הנקודה
                        alert("צריך לפחות 2 תווים לפני ואחרי הנקודה לפני ה- @");
                        Email.select();
                        return false;
                    }
        }

        var AfterShtrudel = EmailInput[1];

        AfterShtrudel = AfterShtrudel.split(".");
        if (AfterShtrudel.length < 2 || AfterShtrudel.length > 3) {
            alert("אחרי ה- @ חייב נקודה אחת או שתיים");
            Email.select();
            return false;
        }
        else {
            if (AfterShtrudel.length == 2) {
                if (AfterShtrudel[0].length < 2) {
                    alert("צריך לפחות 2 תווים לפני הנקודה אחרי ה- @");
                    Email.select();
                    return false;
                }
                else
                    if (AfterShtrudel[1].length != 3) {  //מקרה שיש נקודה אחת בודק שיש 3 תווים אחרי הנקודה
                        alert("צריך 3 תווים אחרי הנקודה אחרי ה- @");
                        Email.select();
                        return false;
                    }
            }
            else {
                if (AfterShtrudel.length == 3) {
                    if (AfterShtrudel[0].length < 2 || AfterShtrudel[1].length < 2) {  //מקרה שיש 2 נקודות בודק שיש לפחות 2 תווים לפני ואחרי הנקודות
                        alert("צריך לפחות 2 תווים לפני ואחרי הנקודה אחרי ה- @");
                        Email.select();
                        return false;
                    }
                    if (AfterShtrudel[2].length != 2) {
                        alert("צריך 2 תווים אחרי הנקודה השניה אחרי ה- @");
                        Email.select();
                        return false;
                    }
                }
            }
        }
        return true;
    }

    function CheckPassword(Pass, Text, Min, Max) {
        var str = Pass.value;
        var letter;

        if (str.length == 0) {
            alert("הכנס " + Text);
            Pass.select();
            return false;
        }
        for (i = 0; i < str.length; i++) {
            letter = str.charAt(i);
            if (letter < '!' || letter > '~') {
                alert("הכנס " + Text + " עם אותיות באנגלית ו/או מספרים ו/או תווים");
                Pass.select();
                return false;
            }
        }
        if ((str.length < Min) || (str.length > Max)) {
            alert("הכנס " + Text + " בגודל " + Min + "-" + Max + " תווים");
            Pass.select();
            return false;
        }
        return true;
    }

    function CheckVerify(Pass, Verify, Text) {
        var strPass = Pass.value;
        var strVerify = Verify.value;

        if (strVerify.length == 0) {
            alert("הכנס " + Text);
            Verify.select();
            return false;
        }
        if (strPass != strVerify) {
            alert("סיסמאות לא תואמות");
            Pass.select();
            return false;
        }
        return true;
    }   
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table bgcolor="white" width="77%" border="0" dir="rtl">
            <tr>
                <td>
                    <form name="Pratim" method="post" onsubmit="return CheckForm()" action="UpdateUser.aspx"
                    style="font-family: Arial;">
                    <br />
                    <center>
                        <font size="6"><u>פרטים אישיים:</u></font>
                        <table cellpadding="5">
                            <tr>
                                <td>
                                    שם פרטי:
                                </td>
                                <td>
                                    <input value="<%= dt.Rows[0]["FirstName"] %>" id="FirstName" type="text" name="FirstName" maxlength="10" size="7" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    שם משפחה:
                                </td>
                                <td>
                                    <input value="<%= dt.Rows[0]["LastName"] %>" id="LastName" type="text" name="LastName" maxlength="10" size="7" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    תאריך לידה:
                                </td>
                                <td>
                                    <select id="Year" name="Year">
                                        <option value="<%= dt.Rows[0]["Birthday"].ToString().Substring(6,4) %>"> <%= dt.Rows[0]["Birthday"].ToString().Substring(6,4) %></option>
                                        <option value="2017">2017</option>
                                        <option value="2016">2016</option>
                                        <option value="2015">2015</option>
                                        <option value="2014">2014</option>
                                        <option value="2013">2013</option>
                                        <option value="2012">2012</option>
                                        <option value="2011">2011</option>
                                        <option value="2010">2010</option>
                                        <option value="2009">2009</option>
                                        <option value="2008">2008</option>
                                        <option value="2007">2007</option>
                                        <option value="2006">2006</option>
                                        <option value="2005">2005</option>
                                        <option value="2004">2004</option>
                                        <option value="2003">2003</option>
                                        <option value="2002">2002</option>
                                        <option value="2001">2001</option>
                                        <option value="2000">2000</option>
                                        <option value="1999">1999</option>
                                        <option value="1998">1998</option>
                                        <option value="1997">1997</option>
                                        <option value="1996">1996</option>
                                        <option value="1995">1995</option>
                                        <option value="1994">1994</option>
                                        <option value="1993">1993</option>
                                        <option value="1992">1992</option>
                                        <option value="1991">1991</option>
                                        <option value="1990">1990</option>
                                    </select>
                                    <select id="Month" name="Month">
                                        <option value="<%= dt.Rows[0]["Birthday"].ToString().Substring(3,2) %>"><%= dt.Rows[0]["Birthday"].ToString().Substring(3,2) %></option>
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    <select id="Day" name="Day">
                                        <option value="<%= dt.Rows[0]["Birthday"].ToString().Substring(0,2) %>"><%= dt.Rows[0]["Birthday"].ToString().Substring(0,2) %></option>
                                        <option value="01">01</option>
                                        <option value="02">02</option>
                                        <option value="03">03</option>
                                        <option value="04">04</option>
                                        <option value="05">05</option>
                                        <option value="06">06</option>
                                        <option value="07">07</option>
                                        <option value="08">08</option>
                                        <option value="09">09</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                        <option value="13">13</option>
                                        <option value="14">14</option>
                                        <option value="15">15</option>
                                        <option value="16">16</option>
                                        <option value="17">17</option>
                                        <option value="18">18</option>
                                        <option value="19">19</option>
                                        <option value="20">20</option>
                                        <option value="21">21</option>
                                        <option value="22">22</option>
                                        <option value="23">23</option>
                                        <option value="24">24</option>
                                        <option value="25">25</option>
                                        <option value="26">26</option>
                                        <option value="27">27</option>
                                        <option value="28">28</option>
                                        <option value="29">29</option>
                                        <option value="30">30</option>
                                        <option value="31">31</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    מין:
                                </td>
                                <td>
                                    <input <%if(dt.Rows[0]["Gender"].ToString() == "male"){ %> checked="checked" <%} %> id="Male" type="radio" name="Gender" value="male" />זכר
                                    <input <%if(dt.Rows[0]["Gender"].ToString() == "female"){ %> checked="checked" <%} %> id="Female" type="radio" name="Gender" value="female" />נקבה
                                </td>
                            </tr>
                        </table>
                        <br />
                        <font size="6"><u>פרטי יצירת קשר:</u></font>
                        <table cellpadding="5">
                            <tr>
                                <td>
                                    טלפון:
                                </td>
                                <td>
                                    <input value="<%= dt.Rows[0]["PhoneNumber"].ToString().Substring(3,7) %>" id="Phone" type="text" name="Phone" maxlength="7" size="6" />
                                    <select id="Kidomet" name="Kidomet">
                                        <option value="<%= dt.Rows[0]["PhoneNumber"].ToString().Substring(0,3) %>"><%= dt.Rows[0]["PhoneNumber"].ToString().Substring(0,3) %></option>
                                        <option value="050">050</option>
                                        <option value="052">052</option>
                                        <option value="053">053</option>
                                        <option value="054">054</option>
                                        <option value="055">055</option>
                                        <option value="058">058</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    אימייל:
                                </td>
                                <td>
                                    <input value="<%= dt.Rows[0]["Email"] %>" id="Email" type="text" name="Email" maxlength="30" size="29" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <font size="6"><u>פרטי התחברות:</u></font>
                        <table cellpadding="5">
                            <tr>
                                <td>
                                    <input value="<%= dt.Rows[0]["Nickname"] %>" id="Nickname" type="hidden" name="Nickname" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    סיסמא:
                                </td>
                                <td>
                                    <input value="<%= dt.Rows[0]["Pass"] %>" id="Pass" type="password" name="Pass" maxlength="16" size="7" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    אימות סיסמא:
                                </td>
                                <td>
                                    <input value="<%= dt.Rows[0]["Pass"] %>" id="Verify" type="password" name="Verify" maxlength="16" size="7" />
                                </td>
                            </tr>
                        </table>
                        <br />
                        <table cellpadding="5">
                            <tr>
                                <td align="center">
                                    <input type="submit" value="עדכן" style="width: 71px" />
                                </td>
                            </tr>
                        </table>
                    </center>
                    <br />
                    </form>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
