using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace RealEstateWebRole.Public
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page.Title = "Forgot Password";
                HtmlMeta htmlmeta = new HtmlMeta();
                htmlmeta.Name = "Keywords";
                htmlmeta.Content = "Property in South africa,property South africa,real estate in kanya,South african real estate,real estate agent in South africa,proprty listing site in South africa,plots for sale,most popular property site in South africa";
                Page.Header.Controls.Add(htmlmeta);

                HtmlMeta htmlmeta2 = new HtmlMeta();
                htmlmeta2.Name = "keywords2";
                htmlmeta2.Content = "Nation daily,nation news paper South africa";
                Page.Header.Controls.Add(htmlmeta2);
            }
        }
    }
}