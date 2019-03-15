<%@ Page Title="משתמשים" Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((string)(Session["UserName"]) == "Admin")
        {
            OleDbConnection Conn = new OleDbConnection();
            OleDbCommand Cmd = new OleDbCommand();
            Cmd.Connection = Conn;
            String path = Server.MapPath(@"DATA\SiteDB.mdb");
            Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
            Cmd.CommandText = String.Format("Select * from UsersOfWebsite;");
            OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
            da.Fill(dt);
        }
        else
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
                    <center>
                        <table cellpadding="5" width="100%" border="0" dir="rtl">
                            <tr>
                                <td>
                                    <center>
                                        <h1>
                                            <font style="font-family: Myriad עברית" size="30">משתמשים</font></h1>
                                    </center>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <center>
                                        <table cellpadding="10" width="70%" border="1" dir="rtl">
                                            <tr>
                                                <td>
                                                    <center>
                                                        <b>שינוי</b></center>
                                                </td>
                                                <td>
                                                    <center>
                                                        <b>מחיקה</b></center>
                                                </td>
                                                <td>
                                                    <center>
                                                        <b>שם משתמש</b></center>
                                                </td>
                                                <td>
                                                    <center>
                                                        <b>שם פרטי</b></center>
                                                </td>
                                                <td>
                                                    <center>
                                                        <b>שם משפחה</b></center>
                                                </td>
                                                <td>
                                                    <center>
                                                        <b>אימייל</b></center>
                                                </td>
                                            </tr>
                                            <%
                                                for (int i = 0; i < dt.Rows.Count; i++)
                                                {
                                                    Response.Write("<tr>");
                                                    if ((bool)(dt.Rows[i]["Admin"]))
                                                    {
                                                        Response.Write("<td></td>");
                                                        Response.Write("<td></td>");
                                                    }
                                                    else
                                                    {
                                                        Response.Write("<td>" + "<a href='ChangeUser.aspx?Nickname=" + dt.Rows[i]["Nickname"] + "'>שנה</a>" + "</td>");
                                                        Response.Write("<td>" + "<a href='DeleteUser.aspx?Nickname=" + dt.Rows[i]["Nickname"] + "'>מחק</a>" + "</td>");
                                                    }
                                                    Response.Write("<td>" + dt.Rows[i]["Nickname"] + "</td>");
                                                    Response.Write("<td>" + dt.Rows[i]["FirstName"] + "</td>");
                                                    Response.Write("<td>" + dt.Rows[i]["LastName"] + "</td>");
                                                    Response.Write("<td>" + dt.Rows[i]["Email"] + "</td>");
                                                    Response.Write("</tr>");
                                                }
                                            %>
                                        </table>
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
