<%@ Page Title="הוספת משתמש" Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    public bool flag;

    protected void Page_Load(object sender, EventArgs e)
    {
        String LastName = Request.Form["LastName"].ToString().Replace("'", "''");
        String FirstName = Request.Form["FirstName"].ToString().Replace("'", "''");
        String Gender = Request.Form["Gender"];
        String Year = Request.Form["Year"];
        String Month = Request.Form["Month"];
        String Day = Request.Form["Day"];
        String Pass = Request.Form["Pass"].ToString().Replace("'", "''");
        String Nickname = Request.Form["Nickname"].ToString().Replace("'", "''");
        String Email = Request.Form["Email"];
        String Birthday = Day + "/" + Month + "/" + Year;
        String Kidomet = Request.Form["Kidomet"].ToString();
        String Phone = Request.Form["Phone"].ToString();
        String PhoneNumber = Kidomet + Phone;

        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"DATA\SiteDB.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Select * from UsersOfWebsite where Nickname='{0}';", Nickname);
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        da.Fill(dt);

        if (dt.Rows.Count != 0)
            flag = false;
        else
        {
            Cmd.CommandText = String.Format("Insert into UsersOfWebsite(Nickname, Pass, FirstName, LastName, Gender, Birthday, PhoneNumber, Email, Admin) Values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}','{6}', '{7}', {8});", Nickname, Pass, FirstName, LastName, Gender, Birthday, PhoneNumber, Email, "no");
            Conn.Open();
            Cmd.ExecuteNonQuery();
            Conn.Close();
            Session["UserName"] = Nickname;
            flag = true;
        }

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table cellpadding="5" bgcolor="white" width="77%" border="0" dir="rtl">
            <tr>
                <td>
                    <center>
                        <table cellpadding="5" width="100%" border="0" dir="rtl">
                            <tr>
                                <td>
                                    <center>
                                        <%if (flag == false)
                                          { %>
                                        <h1 style="font-family: Myriad עברית; color: #CC0000">
                                            <b>שם המשתמש כבר תפוס</b></h1>
                                        <br />
                                        <a class="button" style="color: Red" href="RegisterForm.aspx">חזור להרשמה</a>&nbsp;&nbsp;&nbsp;
                                        <a class="button" style="color: Green" href="Default.aspx">חזור אל דף הבית</a><br />
                                        <%}
                                          else
                                          {
                                        %>
                                        <h1 style="font-family: Myriad עברית; color: Teal">
                                            <b>ברוך הבא, פרטיך נקלטו בהצלחה</b></h1>
                                        <br />
                                        <a class="button" style="color: Green" href="Default.aspx">חזור אל דף הבית</a><br />
                                        <br />
                                        <%}%>
                                    </center>
                                </td>
                            </tr>
                        </table>
                    </center>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
