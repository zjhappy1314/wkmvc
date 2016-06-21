using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.IService
{
    public interface IUserPermissionManage:IRepository<Domain.SYS_USER_PERMISSION>
    {
        /// <summary>
        /// 设置用户权限
        /// </summary>
        /// <param name="userId">用户ID</param>
        /// <param name="newper">权限字符串</param>
        /// <param name="sysId">系统ID</param>
        /// <returns></returns>
        bool SetUserPermission( int userId, string newper, string sysId );
    }
}
