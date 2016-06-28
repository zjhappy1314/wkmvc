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
        /// <summary>
        /// 日志记录
        /// </summary>
        log4net.Ext.IExtLog log = log4net.Ext.ExtLogManager.GetLogger( "dblog" );
        #endregion

        #region 基本视图
        public ActionResult Index()
        {
            return View();
        }
        #endregion

        #region 帮助方法

        /// <summary>
        /// 验证码
        /// </summary>
        /// <returns></returns>
        public FileContentResult ValidateCode()
        {
            string code = "";
            System.IO.MemoryStream ms = new Models.verify_code().Create( out code );
            Session["gif"] = code;//验证码存储在session中，供验证
            Response.ClearContent();//清空输出流
            return File( ms.ToArray(), @"image/png" );
        }


        [ValidateAntiForgeryToken]
        public ActionResult Login( Domain.SYS_USER item )
        {
            var json = new JsonHelper() { Msg = "登陆成功", Status = "n" };
            try
            {
                //获取表单验证码
                var code = Request.Form["code"];
                if ( Session["gif"] != null )
                {
                    //判断用户输入的验证码是否正确
                    if ( !string.IsNullOrEmpty(code) && code.ToLower()==Session["gif"].ToString().ToLower() )
                    {
                        //调用登陆验证接口 返回用户实体类
                        var users = UserManage.UserLogin( item.ACCOUNT.Trim(), item.PASSWORD.Trim() );
                        if ( users != null )
                        {
                            //是否锁定
                            if ( users.ISCANLOGIN == 1 )
                            {
                                json.Msg = "用户已锁定，禁止登陆，请联系管理员";
                                log.Warn( Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "登陆系统，登陆结果" + json.Msg );
                                return Json( json );
                            }
                            var account = this.UserManage.GetAccountByUser( users );
                            //写入Session 当前登陆用户
                            SessionHelper.SetSession( "CurrentUser", account );
                            //记录用户信息到Cookies
                            string cookievalue = "{\"id\":\"" + account.Id + "\",\"username\":\"" + account.LogName + "\",\"password\":\"" + account.PassWord + "\",\"Token\":\"" + Session.SessionID + "\"}";
                            CookieHelper.SetCookie( "cookie_rememberme", new Common.CryptHelper.AESCrypt().Encrypt( cookievalue ), null );
                            //更新用户本次登陆IP
                            users.LastLoginIP = Utils.GetIP();
                            UserManage.Update( users );

                            json.Status = "y";
                            json.ReUrl = "Sys/Home/Index";
                            log.Info( Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "登陆系统，登陆结果" + json.Msg );
                        }
                        else
                        {
                            json.Msg = "用户名或密码不正确";
                            log.Error( Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "登陆系统，登陆结果" + json.Msg );
                        }
                    }
                    else
                    {
                        json.Msg = "验证码不正确";
                        log.Error( Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "系统登录,登录结果：" + json.Msg );
                    }                    
                }
                else
                {
                    json.Msg = "验证码已过期，请刷新验证码";
                    log.Error( Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "系统登录,登录结果：" + json.Msg );
                }
            }
            catch ( Exception e )
            {
                json.Msg = e.Message;
                log.Warn( Utils.GetIP(), item.ACCOUNT, Request.Url.ToString(), "Login", "登陆系统，登陆结果" + json.Msg );
            }
            return Json( json, JsonRequestBehavior.AllowGet );
        }
        #endregion

    }
}
