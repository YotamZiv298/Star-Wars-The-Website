<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
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

        Cmd.CommandText = String.Format("Update UsersOfWebsite set Pass = '{0}', FirstName = '{1}', LastName = '{2}', Gender = '{3}', Birthday = '{4}', PhoneNumber = '{5}', Email = '{6}' where Nickname = '{7}';", Pass, FirstName, LastName, Gender, Birthday, PhoneNumber, Email, Nickname);
        Conn.Open();
        Cmd.ExecuteNonQuery();
        Conn.Close();

        Response.Redirect("UserTable.aspx");
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
