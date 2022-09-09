using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Windows;

namespace DemonicLibrary
{
    public partial class Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString);

            conn.Open();

            SqlCommand cmd = new SqlCommand("insert into Book_List values(@Book_ID, @Book_Name, @Genre, @Author, @Quantity)", conn);
            cmd.Parameters.AddWithValue("@Book_ID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Book_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Genre", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Author", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Quantity", TextBox5.Text);

            cmd.ExecuteNonQuery();

            MessageBox.Show("Data Added Successfully!");

            conn.Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString);

            conn.Open();

            SqlCommand cmd = new SqlCommand("update Book_List set Book_Name=@Book_Name,Genre=@Genre,Author=@Author,Quantity=@Quantity where Book_ID=@Book_ID",conn);
            cmd.Parameters.AddWithValue("@Book_ID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Book_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Genre", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Author", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Quantity", TextBox5.Text);

            cmd.ExecuteNonQuery();

            MessageBox.Show("Data Updated Sucessfully!");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString3"].ConnectionString);

            conn.Open();

            SqlCommand cmd = new SqlCommand("delete from Book_List where Book_ID=@b_id", conn);
            cmd.Parameters.AddWithValue("@b_id", TextBox1.Text);

            cmd.ExecuteNonQuery();

            MessageBox.Show("Data Deleted Sucessfully!");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}