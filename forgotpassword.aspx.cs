using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLikeNew
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Update_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                OleDbConnection con = new OleDbConnection();
                OleDbCommand cmd = new OleDbCommand();
                con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("jln.accdb");
                con.Open();
                cmd.Connection = con;
                string uname = Request.QueryString["name"];
                cmd.CommandText = "update login set [Password] = '"+newpass.Text+ "' where [userName] = '"+uname+"'";
                cmd.ExecuteNonQuery();
            }
        }
    }
}