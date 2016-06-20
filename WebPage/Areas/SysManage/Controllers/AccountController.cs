using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Common;
using Service.IService;

namespace WebPage.Areas.SysManage.Controllers
{
    public class AccountController : Controller
    {
        #region 声明容器
        /// <summary>
        /// 用户管理
        /// </summary>
        IUserManage UserManage { get; set; }
        #endregion

        #region 基本视图
        public ActionResult Index()
        {
            return View();
        }
        #endregion

        #region 帮助方法
        [ValidateAntiForgeryToken]
        public ActionResult Login( Domain.SYS_USER item )
        {
            var json = new JsonHelper() { Msg = "登陆成功", Status = "n" };
            try
            {
                //调用登陆验证接口 返回用户实体类
                var users = UserManage.UserLogin( item.ACCOUNT.Trim(), item.PASSWORD.Trim() );
                if ( users != null )
                {
                    //是否锁定
                    if ( users.ISCANLOGIN == 1 )
                    {
                        json.Msg = "用户已锁定，禁止登陆，请联系管理员";
                        return Json( json );
                    }
                    json.Status = "y";
                }
                else
                {
                    json.Msg = "用户名或者密码不正确";
                }
            }
            catch ( Exception e )
            {
                json.Msg = e.Message;
            }
            return Json( json, JsonRequestBehavior.AllowGet );
        }
        #endregion

    }
}
