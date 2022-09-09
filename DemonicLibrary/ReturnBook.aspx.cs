using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace DemonicLibrary
{
    public partial class Return : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString);

            conn.Open();

            SqlCommand cmdval = new SqlCommand("select * from Issued_Books where Book_ID=@Book_ID AND Student_Roll=@Student_Roll", conn);
            cmdval.Parameters.AddWithValue("@Book_ID", TextBox1.Text);
            cmdval.Parameters.AddWithValue("@Student_Roll", TextBox3.Text);

            SqlDataReader dr = cmdval.ExecuteReader();
            if (dr.Read())
            {
                conn.Close();
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into Returned_Books values(@b_id, @s_name, @s_roll, @class, @reby, @date); delete from Issued_Books where Book_ID=@b_id", conn);
                cmd.Parameters.AddWithValue("@b_id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@s_name", TextBox2.Text);
                cmd.Parameters.AddWithValue("@s_roll", TextBox3.Text);
                cmd.Parameters.AddWithValue("@class", TextBox4.Text);
                cmd.Parameters.AddWithValue("@reby", TextBox5.Text);
                cmd.Parameters.AddWithValue("@date", DateTime.Today);

                cmd.ExecuteNonQuery();
                MessageBox.Show("Book Returned Sucessfully!");
            }
            else
            {
                conn.Close();
                conn.Open();

                SqlCommand cmdre = new SqlCommand("select * from Returned_Books where Book_ID=@Book_ID, Student_Roll=@Student_Roll", conn);
                cmdre.Parameters.AddWithValue("@Book_ID", TextBox1.Text);
                cmdre.Parameters.AddWithValue("@Student_Roll", TextBox3.Text);

                SqlDataReader drr = cmdre.ExecuteReader();
                if (drr.Read())
                {
                    Label1.Text = "Book already returned.";
                }
                else
                {
                    Label1.Text = "No such book issued.";
                }
            }
            conn.Close();
        }
    }
}