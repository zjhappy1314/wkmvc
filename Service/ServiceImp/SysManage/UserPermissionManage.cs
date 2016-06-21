using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Service.IService;

namespace Service.ServiceImp
{
    public class UserPermissionManage : RepositoryBase<Domain.SYS_USER_PERMISSION>, IService.IUserPermissionManage
    {
        IPermissionManage PermissionManage { get; set; }
        #region IUserPermissionManage 成员
        /// <summary>
        /// 保存用户权限
        /// </summary>
        /// <param name="userId"></param>
        /// <param name="newper"></param>
        /// <param name="sysId"></param>
        /// <returns></returns>
        public bool SetUserPermission( int userId, string newper, string sysId )
        {
            try
            {
                //1.获取当前系统的模块ID集合
                var permissionId = this.PermissionManage.GetPermissionIdBySysId( sysId ).Cast<int>().ToList();
                //2.获取用户权限，是否存在，存在即删除
                if ( this.IsExist( p => p.FK_USERID == userId && permissionId.Any( e => e == p.FK_PERMISSIONID ) ) )
                {
                    //3.删除用户权限
                    this.Delete( p => p.FK_USERID == userId && permissionId.Any( e => e == p.FK_PERMISSIONID ) );
                }
                //4.添加用户权限
                var str = newper.Trim( ',' ).Split( ',' );
                foreach ( var per in str.Select( t => new Domain.SYS_USER_PERMISSION() { FK_PERMISSIONID = int.Parse( t ), FK_USERID = userId } ) )
                {
                    this.dbSet.Add( per );
                }
                //5.save
                return this.Context.SaveChanges() > 0;
            }
            catch ( Exception e )
            {
                throw e;
            }
        }

        #endregion
    }
}
