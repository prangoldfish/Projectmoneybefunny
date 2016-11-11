using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class expense : System.Web.UI.Page
{
    SqlConnection conex = new SqlConnection("Data Source=prangoldfish;Initial Catalog=moneybefunny;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ExDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }

    protected void save_Click(object sender, EventArgs e)
    {
        if (Exmoney.Text == "" || Exdate.Text == "")
        {
            RegisterAlertScript("กรุณาใส่ข้อมูลให้ครบ !");
        }
        else
        {
            Random ran = new Random();
            int IEID = ran.Next(1, 100000);
            int DIcid = 0;    
            int DInmoney = Convert.ToInt32(Exmoney.Text);
            String strString = Exdate.Text;
            String[] myArrdateex = strString.Split(' ');
            conex.Open();

            String Dcid = "SELECT CID FROM CATEGORY WHERE Kind = '" + ExDropDown.SelectedItem.Text + "'";
            SqlCommand com = new SqlCommand(Dcid, conex);
            SqlDataReader drr = com.ExecuteReader();
            drr.Read();
            DIcid = Convert.ToInt32(drr[0]);
            drr.Close();


            string sqlStringex = "SELECT * FROM INCOMEANDEXPENSE WHERE UID = '" + 111 + "'";
            SqlCommand comm = new SqlCommand(sqlStringex, conex);
            SqlDataReader reader = comm.ExecuteReader();
            reader.Read();
            reader.Close();

            string sqlqueryex = "INSERT INTO INCOMEANDEXPENSE(IEID,UID,CID,Money,Description,Day,Month,Year) VALUES (@IEID,@UID,@CID,@Money,@Description,@Day,@Month,@Year)";
            SqlCommand command = new SqlCommand(sqlqueryex, conex);
            command.Parameters.AddWithValue("@IEID", IEID);
            command.Parameters.AddWithValue("@UID", 112);
            command.Parameters.AddWithValue("@CID", DIcid);
            command.Parameters.AddWithValue("@Money", DInmoney);
            command.Parameters.AddWithValue("@Description", Ediscrition.Text);
            command.Parameters.AddWithValue("@Day", myArrdateex[0]);
            command.Parameters.AddWithValue("@Month", myArrdateex[1]);
            command.Parameters.AddWithValue("@Year", myArrdateex[2]);
            command.ExecuteNonQuery();
            conex.Close();

            strString = "";
            Exmoney.Text = "";
            Exdate.Text = "";
            Ediscrition.Text = "";
            RegisterAlertScript("บันทึกข้อมูลเรียบร้อย :)");
        }
    }

    protected void clear_Click(object sender, EventArgs e)
    {
        Exmoney.Text = "";
        Ediscrition.Text = "";
        Exdate.Text = "";
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
}