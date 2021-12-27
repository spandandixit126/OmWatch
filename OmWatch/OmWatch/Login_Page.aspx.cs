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
    public partial class Login_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["UserName"] = TextBox1.Text;
            //Check For Normal Users
            SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\C# Projects\OmWatch\OmWatch\App_Data\OmWatch.mdf;Integrated Security=True");
            string query = "select * from People where UserName=@UserName and Password=@Password and UserType=@UserType and verify=1 ";
            string UserType = "User";
            cn.Open();
            SqlCommand cmd, cmd2;
            cmd= new SqlCommand(query,cn);
            cmd.Parameters.AddWithValue("UserType",UserType);
            cmd.Parameters.AddWithValue("UserName", TextBox1.Text);
            cmd.Parameters.AddWithValue("Password", TextBox2.Text);
            cmd.Connection = cn;
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            cn.Close();
            bool loginUser = ((ds.Tables.Count > 0) && (ds.Tables[0].Rows.Count > 0));
            
            // Check for Admin Users
            SqlConnection cn2 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=F:\C# Projects\OmWatch\OmWatch\App_Data\OmWatch.mdf;Integrated Security=True");
            string query2 = "select * from People where UserName=@UserName and Password=@Password and UserType=@UserType and verify=1";
            string UserType2 = "Admin";
            cmd2 = new SqlCommand(query2,cn2);
            cmd2.Parameters.AddWithValue("UserType",UserType2);
            cmd2.Parameters.AddWithValue("UserName",TextBox1.Text);
            cmd2.Parameters.AddWithValue("Password",TextBox2.Text);
            cmd2.Connection = cn2;
            DataSet ds2 = new DataSet();
            SqlDataAdapter sda2 = new SqlDataAdapter(cmd2);
            sda2.Fill(ds2);
            cn2.Close();
            bool loginAdmin = ((ds2.Tables.Count > 0) && (ds2.Tables[0].Rows.Count > 0));
            if (loginAdmin)
            {
                Response.Write("<script language='javascript'>window.alert('you are trying to login using admin mode!!!');window.location='GOLD_Admin.aspx';</script>");
            }
            else if(loginUser)
            {
                Response.Write("<script language='javascript'>window.alert('Login Successfully!!!');window.location='Main_Page.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Sorry!!! Login Failed Please Try With Different UserName or Password!!!');</script>");
            }
        }
    }
}