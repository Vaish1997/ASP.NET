using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLikeNew
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            string email="";
            OleDbConnection con = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            OleDbCommand cmd2 = new OleDbCommand();
            con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("jln.accdb");
            con.Open();
            cmd.Connection = con;
            cmd2.Connection = con;
            cmd2.CommandText = "select [FirstName],[LastName],[emailID] from login where userName ='" + username.Text + "'";
            cmd.CommandText = "select count(*) from login where [userName]='" + username.Text + "'";
            int row = (int)cmd.ExecuteScalar();
            if (row == 0)
            {
                con.Close();
                status.Visible = true;
                status.Text = "User Name or Password is incorrect";
                
            }
            else
            {
                using (OleDbDataReader dr = cmd2.ExecuteReader())
                {
                    while (dr.Read())
                    {
                        email = dr[2].ToString();
                         

                    }
                    con.Close();
                }
                Session["emailID"] = email;
                Response.Redirect("~/ViewProducts.aspx");
            }
        }

        protected void forgotpass_Click(object sender, EventArgs e)
        {
            string uname = username.Text;
            Response.Redirect("~/forgotPassword.aspx?name=" + uname);

        }
    }
}