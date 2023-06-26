using System;
using System.Web.UI;

namespace WebApplication1
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            titlePage.Text = Page.Title;

        }


    }
}