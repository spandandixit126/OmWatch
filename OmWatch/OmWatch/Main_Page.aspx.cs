using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OmWatch
{
    public partial class Main_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["UserName"].ToString();
        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                Label2.Visible = false;
                TextBox3.Visible = false;
            }
        }
        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton2.Checked)
            {
                Label2.Visible = false;
                TextBox3.Visible = false;
            }
        }
        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton3.Checked)
            {
                Label2.Visible = true;
                TextBox3.Visible = true;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\C# Projects\OmWatch\OmWatch\App_Data\OmWatch.mdf;Integrated Security=True");
            string query = ""; 
            string UserName = Session["UserName"].ToString();
            string Quantity = TextBox1.Text.ToString();
            string Rate = TextBox2.Text.ToString();
            string Status = "0";
            string BOKADA = "";
            cn.Open();
            //////////////////////BUY GOLD///////////////////////////////////
            // BUYGOLD
            if (RadioButton1.Checked && DropDownList1.Text == "GOLD")
            {
                query = "insert into BUYGOLD(UserName,Quantity,Rate,Status) values(@UserName,@Quantity,@Rate,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();
            }
            //  SELLGOLD
            else if (RadioButton2.Checked && DropDownList1.Text == "GOLD")
            {
                query = "insert into SELLGOLD(UserName,Quantity,Rate,Status) values(@UserName,@Quantity,@Rate,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();
            }
            // CHANGEGOLD
            else if (RadioButton3.Checked && DropDownList1.Text == "GOLD")
            {
                query = "insert into CHANGEGOLD(UserName,Quantity,Rate,BOKADA,Status) values(@UserName,@Quantity,@Rate,@BOKADA,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@BOKADA", BOKADA);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();
            }
            ////////////////////////////BUY IMP GOLD///////////////////////////
            // BUYIMPGOLD
            else if (RadioButton1.Checked && DropDownList1.Text == "IMP GOLD")
            {
                query = "insert into BUYIMPGOLD(UserName,Quantity,Rate,Status) values(@UserName,@Quantity,@Rate,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();
            }
            //  SELLIMPGOLD
            else if (RadioButton2.Checked && DropDownList1.Text == "IMP GOLD")
            {
                query = "insert into SELLIMPGOLD(UserName,Quantity,Rate,Status) values(@UserName,@Quantity,@Rate,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();
            }
            // CHANGEIMPGOLD
            else if (RadioButton3.Checked && DropDownList1.Text == "IMP GOLD")
            {
                query = "insert into CHANGEIMPGOLD(UserName,Quantity,Rate,BOKADA,Status) values(@UserName,@Quantity,@Rate,@BOKADA,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@BOKADA", BOKADA);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();
            }
            //////////////////////////////BUY DHAL GOLD/////////////////////////////
            //BUYDHALGOLD
            else if (RadioButton1.Checked && DropDownList1.Text == "DHAL GOLD")
            {
                query = "insert into BUYDHALGOLD(UserName,Quantity,Rate,Status) values(@UserName,@Quantity,@Rate,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();

            }
            //  SELLDHALGOLD
            else if (RadioButton2.Checked && DropDownList1.Text == "DHAL GOLD")
            {
                query = "insert into SELLDHALGOLD(UserName,Quantity,Rate,Status) values(@UserName,@Quantity,@Rate,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();

            }
            // CHANGEDHALGOLD
            else if (RadioButton3.Checked && DropDownList1.Text == "DHAL GOLD")
            {
                query = "insert into CHANGEDHALGOLD(UserName,Quantity,Rate,BOKADA,Status) values(@UserName,@Quantity,@Rate,@BOKADA,@Status)";
                SqlCommand cmd = new SqlCommand(query, cn);
                cmd.Parameters.AddWithValue("@UserName", UserName);
                cmd.Parameters.AddWithValue("@Quantity", Quantity);
                cmd.Parameters.AddWithValue("@Rate", Rate);
                cmd.Parameters.AddWithValue("@BOKADA", BOKADA);
                cmd.Parameters.AddWithValue("@Status", Status);
                cmd.ExecuteNonQuery();
            }
            // Failed to place an order
            else
            {
                Response.Write("<script language='javascript'>window.alert('Failed To Place an Order');window.location='Orders_Page_User.aspx';</script>");
            }
            cn.Close();
            Response.Write("<script language='javascript'>window.alert('Order Placed Successfully');window.location='Orders_Page_User.aspx';</script>");
        }
    }
}