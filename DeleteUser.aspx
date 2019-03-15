<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        String Nickname = Request.QueryString["Nickname"].ToString();

        OleDbConnection Conn = new OleDbConnection();
        OleDbCommand Cmd = new OleDbCommand();
        Cmd.Connection = Conn;
        String path = Server.MapPath(@"DATA\SiteDB.mdb");
        Conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path;
        Cmd.CommandText = String.Format("Delete * from UsersOfWebsite where Nickname = '{0}';", Nickname);
        DataTable dt = new DataTable();
        OleDbDataAdapter da = new OleDbDataAdapter(Cmd);
        da.Fill(dt);

        Response.Redirect("UserTable.aspx");
    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
