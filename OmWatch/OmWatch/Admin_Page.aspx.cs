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
    public partial class Admin : System.Web.UI.Page
    {            
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["UserName"].ToString();
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\C# Projects\OmWatch\OmWatch\App_Data\OmWatch.mdf;Integrated Security=True");
            string query = "select * from People where UserName=@UserName and UserType='User';";
            SqlCommand cmd = new SqlCommand(query,cn);
            cmd.Parameters.AddWithValue("Username",Label1.Text);
            cmd.Connection = cn;
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cn.Close();
            bool isvaliduser = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));
            if (isvaliduser)
            {
                Response.Write("<script language='javascript'>window.alert('You are trying to login admin panel without permissions');window.location='Login_Page.aspx';</script>");
                Session.Abandon();                
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // reference the Delete LinkButton
                LinkButton lb = (LinkButton)e.Row.Cells[9].Controls[2];
                if (lb.Text == "Delete")
                {
                    lb.OnClientClick = "return confirm('Are you sure you want to delete this row?If you are deleting Admin User Make Sure that You have another user with Admin Rights');";
                }
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // reference the Edit LinkButton
                LinkButton lb = (LinkButton)e.Row.Cells[9].Controls[0];
                if (lb.Text == "Edit")
                {
                    lb.OnClientClick = "return confirm('Do you want to Edit this row?');";
                }
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // reference the Update LinkButton
                LinkButton lb = (LinkButton)e.Row.Cells[9].Controls[0];
                if (lb.Text == "Update")
                {
                    lb.OnClientClick = "return confirm('Are you sure you want to Update this row?');";
                }
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                // reference the Cancel LinkButton
                LinkButton lb = (LinkButton)e.Row.Cells[9].Controls[2];
                if (lb.Text == "Cancel")
                {
                    lb.OnClientClick = "return confirm('Are you sure you want to Cancel? Any changes you done to this row will be not saved.');";
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\C# Projects\OmWatch\OmWatch\App_Data\OmWatch.mdf;Integrated Security=True");
                string query1 = "delete from BUYGOLD where Status='Not-Confirmed';";
                string query2 = "delete from BUYIMPGOLD where Status='Not-Confirmed';";
                string query3 = "delete from BUYDHALGOLD where Status='Not-Confirmed';";
                string query4 = "delete from SELLGOLD where Status='Not-Confirmed';";
                string query5 = "delete from SELLIMPGOLD where Status='Not-Confirmed';";
                string query6 = "delete from SELLDHALGOLD where Status='Not-Confirmed';";
                string query7 = "delete from CHANGEGOLD where Status='Not-Confirmed';";
                string query8 = "delete from CHANGEIMPGOLD where Status='Not-Confirmed';";
                string query9 = "delete from CHANGEDHALGOLD where Status='Not-Confirmed';";
                SqlCommand cmd1,cmd2,cmd3,cmd4,cmd5,cmd6,cmd7,cmd8,cmd9;
                cmd1 = new SqlCommand(query1, con);
                cmd2 = new SqlCommand(query2, con);
                cmd3 = new SqlCommand(query3, con);
                cmd4 = new SqlCommand(query4, con);
                cmd5 = new SqlCommand(query5, con);
                cmd6 = new SqlCommand(query6, con);
                cmd7 = new SqlCommand(query7, con);
                cmd8 = new SqlCommand(query8, con);
                cmd9 = new SqlCommand(query9, con);
                con.Open();
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                cmd3.ExecuteNonQuery();
                cmd4.ExecuteNonQuery();
                cmd5.ExecuteNonQuery();
                cmd6.ExecuteNonQuery();
                cmd7.ExecuteNonQuery();
                cmd8.ExecuteNonQuery();
                cmd9.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language='javascript'>window.alert('all the unconfirmed(Not-Confirmed) orders deleted successful');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script language='javascript'>window.alert('operation unsuccessful may be some problem with connectivity please try later.');</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\C# Projects\OmWatch\OmWatch\App_Data\OmWatch.mdf;Integrated Security=True");
                string query1 = "delete from BUYGOLD where Status='Confirmed';";
                string query2 = "delete from BUYIMPGOLD where Status='Confirmed';";
                string query3 = "delete from BUYDHALGOLD where Status='Confirmed';";
                string query4 = "delete from SELLGOLD where Status='Confirmed';";
                string query5 = "delete from SELLIMPGOLD where Status='Confirmed';";
                string query6 = "delete from SELLDHALGOLD where Status='Confirmed';";
                string query7 = "delete from CHANGEGOLD where Status='Confirmed';";
                string query8 = "delete from CHANGEIMPGOLD where Status='Confirmed';";
                string query9 = "delete from CHANGEDHALGOLD where Status='Confirmed';";
                SqlCommand cmd1, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7, cmd8, cmd9;
                cmd1 = new SqlCommand(query1, con);
                cmd2 = new SqlCommand(query2, con);
                cmd3 = new SqlCommand(query3, con);
                cmd4 = new SqlCommand(query4, con);
                cmd5 = new SqlCommand(query5, con);
                cmd6 = new SqlCommand(query6, con);
                cmd7 = new SqlCommand(query7, con);
                cmd8 = new SqlCommand(query8, con);
                cmd9 = new SqlCommand(query9, con);
                con.Open();
                cmd1.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                cmd3.ExecuteNonQuery();
                cmd4.ExecuteNonQuery();
                cmd5.ExecuteNonQuery();
                cmd6.ExecuteNonQuery();
                cmd7.ExecuteNonQuery();
                cmd8.ExecuteNonQuery();
                cmd9.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language='javascript'>window.alert('all the confirmed orders deleted successful');</script>");
            }
            catch (Exception)
            {
                Response.Write("<script language='javascript'>window.alert('operation unsuccessful may be some problem with connectivity please try later.');</script>");
            }
        }
    }
}