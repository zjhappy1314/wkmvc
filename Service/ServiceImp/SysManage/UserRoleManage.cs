using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.ServiceImp
{
    public class UserRoleManage:RepositoryBase<Domain.SYS_USER_ROLE>,IService.IUserRoleManage
    {
        #region IUserRoleManage 成员
        /// <summary>
        /// 设置用户角色
        /// </summary>
        /// <param name="userId">用户ID</param>
        /// <param name="roleId">角色ID字符串</param>
        /// <returns></returns>
        public bool SetUserrole( int userId, string roleId )
        {
            try
            {
                //1.删除用户角色
                this.Delete( p => p.FK_USERID == userId );
                //2.设置当前用户的角色
                if ( string.IsNullOrEmpty( roleId ) ) return true;
                foreach ( var entity in roleId.Split(',').Select(t=>new Domain.SYS_USER_ROLE(){FK_USERID=userId,FK_ROLEID=int.Parse(t)}) )
                {
                    this.dbSet.Add( entity );
                }
                return this.Context.SaveChanges() > 0;
            }
            catch ( Exception  e)
            {                
                throw e;
            }
        }

        #endregion
    }
}
