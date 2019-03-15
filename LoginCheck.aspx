<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    public bool flag;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        String Nickname = Request.Form["LogInNickName"].ToString().Replace("'", "''");
        String Pass = Request.Form["LogInPassword"].ToString().Replace("'", "''");

        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"DATA\SiteDB.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Select * from UsersOfWebsite where Nickname = '{0}' and Pass = '{1}';", Nickname, Pass);
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        da.Fill(dt);

        if (dt.Rows.Count == 0)
            flag = false;
        else
        {
            flag = true;
            if ((bool)(dt.Rows[0]["Admin"]))
                Session["UserName"] = "Admin";
            else
                Session["UserName"] = Nickname;
            Response.Redirect("Default.aspx");
        }
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <%
        if (flag == false)
        {%>
    <center>
        <table cellpadding="5" bgcolor="white" width="77%" border="0" dir="rtl">
            <tr>
                <td>
                    <table cellpadding="5" width="100%" border="0" dir="rtl">
                        <tr>
                            <td>
                                <center>
                                    <h1>
                                        השם משתמש או הסיסמא אינם נכונים</h1>
                                </center>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <center>
                                    <a style="color: Green" href="Default.aspx">חזור אל דף הבית</a></center>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </center>
    <%} %>
</asp:Content>
