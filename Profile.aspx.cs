using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CWPractice
{
    public partial class Login : System.Web.UI.Page
    {
        private string connectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //string ConnectionString = ConfigurationManager
             //       .ConnectionStrings["C4DatabaseConnectionString"]

            string conStr = @"Data Source = .\SQLEXPRESS;" +
                "Database = W18Database;" +
                "Trusted_Connection = True;";

            string query = "spGetUserWithCredentials";
          //  string query = "select * from User "
           //     + "where Email = '"+tbEmail.Text+"' and Password = '"+tbPassword.Text+"'";
            using (SqlConnection connection = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@email", tbEmail.Text);
                cmd.Parameters.AddWithValue("@pw", tbPassword.Text);
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                if (ds.Tables[0].Rows.Count == 1) {
                    //valid login details -> authemticate user
                    FormsAuthentication.RedirectFromLoginPage(tbEmail.Text, false);
                }
                else
                {
                    //invalid login details -> show error msg
                    Response.Write("<p>Invalid Login Attempt</p>");
                }
            }

        }
    }
}