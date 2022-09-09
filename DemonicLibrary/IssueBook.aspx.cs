using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace DemonicLibrary
{
    public partial class IssueBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString);

            conn.Open();

            SqlCommand cmdval = new SqlCommand("select * from Book_List where Book_ID=@Book_ID",conn);
            cmdval.Parameters.AddWithValue("@Book_ID", TextBox1.Text);

            SqlDataReader dr = cmdval.ExecuteReader();
            if(dr.Read())
            {
                conn.Close();
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into Issued_Books values(@Book_ID, @s_name, @s_roll, @class, @date)", conn);

                cmd.Parameters.AddWithValue("@Book_ID", TextBox1.Text);
                cmd.Parameters.AddWithValue("@s_name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@s_roll", TextBox3.Text);
                cmd.Parameters.AddWithValue("@class", TextBox4.Text);
                cmd.Parameters.AddWithValue("@date", DateTime.Today);

                cmd.ExecuteNonQuery();
                MessageBox.Show("Book Issued Sucessfully!");
            }
            else
            {
                Label1.Visible = true;
            }
            conn.Close();
        }
    }
}