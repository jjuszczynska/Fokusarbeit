using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}