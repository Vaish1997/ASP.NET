using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JustLikeNew
{
    public partial class ViewByLaptop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pid = "", pname = "", bname = "", bp = "", sp = "", type = "Laptop", semail = "", phno = "";
            string email = Session["emailID"].ToString();
            name.Text = "Hello!" +email;
            OleDbConnection con = new OleDbConnection();
            OleDbCommand cmd = new OleDbCommand();
            con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("jln.accdb");
            con.Open();
            cmd.Connection = con;
           
            OleDbCommand cmd2 = new OleDbCommand();
            

            //cmd2.Connection = con;
            // cmd2.CommandText = "Select emailID from login where [FirstName] = '" + FirstName + "'";
            /* using (OleDbDataReader oleDb = cmd2.ExecuteReader())
             {
                 while (oleDb.Read())
                 {
                     email = oleDb[0].ToString();
                 }
             }*/
            cmd.CommandText = "Select * from Product where [emailID] <>'" + email + "'"+ "AND" +"[ProductType] ='"+type+"'";
            DataTable table = new DataTable();
            table.Columns.Add("ProductID");
            table.Columns.Add("ProductName");
            table.Columns.Add("BrandName");
            table.Columns.Add("BoughtPrice");
            table.Columns.Add("SellingPrice");
            table.Columns.Add("emailID");
            table.Columns.Add("phoneNumber");
            
            cmd2.Connection = con;
            cmd2.CommandText = "Select [emailID],[phoneNumber] from login where [emailID] <> '" + Session["emailID"].ToString() + "'";
            OleDbDataReader ole = cmd2.ExecuteReader();
            while (ole.Read())
            {
                semail = ole[0].ToString();
                phno = ole[1].ToString();
            }

            using (OleDbDataReader dr = cmd.ExecuteReader())
            {


                while (dr.Read())
                {
                    pid = dr[1].ToString();
                    pname = dr[2].ToString();
                    bname = dr[3].ToString();
                    bp = dr[4].ToString();
                    sp = dr[5].ToString();
                    table.Rows.Add(pid, pname, bname, bp, sp, semail, phno);
                    view.DataSource = table;
                    view.DataBind();

                }


            }
            con.Close();

        }
    }
}
