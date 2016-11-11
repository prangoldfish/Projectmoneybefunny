using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class income : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=prangoldfish;Initial Catalog=moneybefunny;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void clear_Click(object sender, EventArgs e)
    {

        Inmoney.Text = "";
        Indiscrition.Text = "";
        Indate.Text = "";
    }

    protected void save_Click(object sender, EventArgs e)
    {
        if(Inmoney.Text == "" || Indate.Text == "")
        {
            RegisterAlertScript("กรุณาใส่ข้อมูลให้ครบ !");
        }
        else
        {
            int DIcid = 0;
            Random ran = new Random();
            int IEID = ran.Next(1,100000);
            int DInmoney = Convert.ToInt32(Inmoney.Text);
            String strString = Indate.Text;
            String[] myArrdate = strString.Split(' ');
            con.Open();

            String Dcid = "SELECT CID FROM CATEGORY WHERE Kind = '" + InDropDown.SelectedItem.Text + "'";
            SqlCommand com = new SqlCommand(Dcid, con);
            SqlDataReader drr = com.ExecuteReader();
            drr.Read();
            DIcid = Convert.ToInt32(drr[0]);
            drr.Close();


            string sqlString = "SELECT * FROM INCOMEANDEXPENSE WHERE UID = '" + 111 + "'";
            SqlCommand comm = new SqlCommand(sqlString, con);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            reader.Close();

            string sqlquery = "INSERT INTO INCOMEANDEXPENSE(IEID,UID,CID,Money,Description,Day,Month,Year) VALUES (@IEID,@UID,@CID,@Money,@Description,@Day,@Month,@Year)";
            SqlCommand command = new SqlCommand(sqlquery, con);
            command.Parameters.AddWithValue("@IEID", IEID);
            command.Parameters.AddWithValue("@UID", 111);
            command.Parameters.AddWithValue("@CID", DIcid);
            command.Parameters.AddWithValue("@Money", DInmoney);
            command.Parameters.AddWithValue("@Description", Indiscrition.Text);
            command.Parameters.AddWithValue("@Day", myArrdate[0]);
            command.Parameters.AddWithValue("@Month", myArrdate[1]);
            command.Parameters.AddWithValue("@Year", myArrdate[2]);
            command.ExecuteNonQuery();
            con.Close();

            strString = "";
            Inmoney.Text = "";
            Indiscrition.Text = "";
            Indate.Text = "";
            RegisterAlertScript("บันทึกข้อมูลเรียบร้อย :)");
        }

    }
    public void RegisterAlertScript(String sText)
    {
        String csname1 = "PopupScript" + DateTime.Now;
        Type cstype = this.GetType();
        ClientScriptManager cs = Page.ClientScript;
        if (!cs.IsStartupScriptRegistered(cstype, csname1))
        {
            StringBuilder cstext1 = new StringBuilder();
            cstext1.Append("<script type=text/javascript> alert('" + sText + "') </");
            cstext1.Append("script>");
            cs.RegisterStartupScript(cstype, csname1, cstext1.ToString());
        }
    }

    protected void InDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}