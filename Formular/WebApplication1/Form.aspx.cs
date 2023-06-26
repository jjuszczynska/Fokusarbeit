using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;


namespace WebApplication1
{
    public partial class Form : System.Web.UI.Page
    {

        protected override void OnInit(System.EventArgs e)
        {
            base.OnInit(e);



            //load Scriptmanager at Applicytion Start (jquery used in ASP-Validator-Controls)
            // https://msdn.microsoft.com/de-de/library/system.web.ui.scriptmanager.scriptresourcemapping(v=vs.110).aspx            
            //
            ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
            myScriptResDef.Path = "~/scripts/jquery-3.5.0.min.js";
            myScriptResDef.DebugPath = "~/scripts/jquery-3.5.0.js";
            myScriptResDef.CdnPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.5.0.min.js";
            myScriptResDef.CdnDebugPath = "https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.5.0.js";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void onSend(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["ConnStr"].ConnectionString;

            using (SqlConnection con = new SqlConnection(conStr))
            {
                SqlCommand cmd = new SqlCommand("spAddForm", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.Add("@pCourse", SqlDbType.Int).Value = ddKurs.SelectedIndex + 1;
                cmd.Parameters.Add("@pBenotung", SqlDbType.Int).Value = rbNote.SelectedItem.Value;
                cmd.Parameters.Add("@pSchlecht", SqlDbType.Text).Value = tbWorst.Text;
                cmd.Parameters.Add("@pBest", SqlDbType.Text).Value = tbBest.Text;
                cmd.Parameters.Add("@pVerbesser", SqlDbType.Text).Value = tbProposal.Text;

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            Response.Redirect("index.aspx");
        }

    }
}