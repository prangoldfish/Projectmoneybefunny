using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Project_history : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=prangoldfish;Initial Catalog=moneybefunny;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        int i = 0;
        int j = 0;
        int count = 0;
        con.Open();
        String Dcid = "SELECT Name FROM ACCOUNT WHERE UID = '" + 111 + "'";
        SqlCommand com = new SqlCommand(Dcid, con);
        SqlDataReader drr = com.ExecuteReader();
        drr.Read();
        shname.Text = Convert.ToString(drr[0]);
        drr.Close();

        String Dcid1 = "SELECT CID FROM INCOMEANDEXPENSE WHERE UID = '" + 111 + "'";
        SqlCommand com1 = new SqlCommand(Dcid1, con);
        SqlDataReader drr1 = com1.ExecuteReader();
     //   drr1.Read();
        if (drr1.HasRows)
        {
            count++;
        }
        string[] c = new string[count];
        while (drr1.Read())
        {
            c[i] = Convert.ToString(drr1[i]); 
            i++;
        }
        drr1.Close();
        String[] In = new string[count];
        String[] Out = new string[count];
        String Dcid2 = "SELECT CID FROM CATEGORY WHERE InorEx = '" + 1 + "'";
        SqlCommand com2 = new SqlCommand(Dcid2, con);
        SqlDataReader drr2 = com1.ExecuteReader();
        //Count = Convert.ToInt32(drr2);
        while (drr2.Read())
        {
            if(c[j].Equals(drr[j]))
            {
                In[j] = Convert.ToString(drr2[j]);
            }
            else
            {
                Out[j] = Convert.ToString(drr2[j]);
            }
            j++;
        }

        drr2.Close();





        con.Close();
       
    }


    
}