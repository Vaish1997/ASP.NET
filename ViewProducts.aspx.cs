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
    public partial class ViewProducts : System.Web.UI.Page
    {
        OleDbConnection con = new OleDbConnection();
        OleDbCommand cmd = new OleDbCommand();
        string email = "";
        //con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("jln.accdb");
        
            
        protected void Page_Load(object sender, EventArgs e)
        {
            string pid = "", pname = "", bname = "", bp = "", sp = "", semail = "", phno = "";
          //  string email = Session["email"].ToString();
            name.Text = "Hello! " + email;
           // OleDbConnection con = new OleDbConnection();
            OleDbCommand cmd2 = new OleDbCommand();
            con.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + Server.MapPath("jln.accdb");
            con.Open();
            cmd.Connection = con;

             cmd2.Connection = con;
            cmd2.CommandText = "Select [emailID],[phoneNumber] from login where [emailID] <> '" + Session["emailID"].ToString() + "'";
            OleDbDataReader oleDb = cmd2.ExecuteReader();
             
                 while (oleDb.Read())
                 {
                     semail = oleDb[0].ToString();
                     phno = oleDb[1].ToString();
                 }
             
             

            cmd.CommandText = "Select * from Product where [emailID] <>'"+Session["emailID"].ToString()+"'";
            //cmd.CommandText = "SELECT DISTINCT [p.ProductType],[p.BrandName],[p.ProductID] FROM Product p WHERE NOT EXISTS(SELECT* FROM Product p2 WHERE [p2.emailID] = [p.emailID])";
            //cmd.CommandText = "SELECT * FROM Product EXCEPT SELECT * FROM Product WHERE  emailID = '" + Session["emailID"].ToString() + "'";



                DataTable table = new DataTable();
                table.Columns.Add("ProductID");
                table.Columns.Add("ProductName");
                table.Columns.Add("BrandName");
                table.Columns.Add("BoughtPrice");
                table.Columns.Add("SellingPrice");
                table.Columns.Add("emailID");
                table.Columns.Add("phoneNumber");

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

        protected void myAds_Click(object sender, EventArgs e)
        {
            
        }
    }
}