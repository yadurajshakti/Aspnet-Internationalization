using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LocalizationSample
{
    public partial class Home : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {

            if (Request.Form["ddlLang"] != null)
            {
                string _languageCode = Request.Form["ddlLang"];
                var culture = new CultureInfo(_languageCode);
                Thread.CurrentThread.CurrentCulture = culture;
                Thread.CurrentThread.CurrentUICulture = culture;
                // Use the same culture for any newly created threads
                CultureInfo.DefaultThreadCurrentCulture = culture;
                CultureInfo.DefaultThreadCurrentUICulture = culture;
            }
            base.InitializeCulture();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = CultureInfo.CurrentUICulture.Name;
        }

        protected void ddlLang_SelectedIndexChanged(object sender, EventArgs e)
        {
                       
        }
    }
}