using System.Web.Mvc;

namespace WebPage.Areas.ComManage
{
    public class ComManageAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "ComManage";
            }
        }

        public override void RegisterArea( AreaRegistrationContext context )
        {
            context.MapRoute(
                "ComManage_default",
                "ComManage/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional },
                new string[] { "Webpage.Areas.ComManage.Controllers" }
            );
        }
    }
}
