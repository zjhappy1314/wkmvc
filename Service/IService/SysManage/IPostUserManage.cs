using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.IService
{
    /// <summary>
    /// 岗位用户关系业务接口
    /// </summary>
    public interface IPostUserManage : IRepository<Domain.SYS_POST_USER>
    {
        /// <summary>
        /// 根据岗位ID获取人员集合，可传递多个岗位ID
        /// </summary>
        /// <param name="postId"></param>
        /// <returns></returns>
        List<Domain.SYS_USER> GetUserListByPostId( string postId );
        /// <summary>
        /// 根据人员ID获取岗位集合，可传递多个
        /// </summary>
        /// <param name="userId"></param>
        /// <returns></returns>
        List<Domain.SYS_POST> GetPostListByUserId( string userId );
        /// <summary>
        /// 添加岗位人员管辖
        /// </summary>
        /// <param name="userId">人员ID</param>
        /// <param name="postId">岗位ID集合</param>
        /// <returns></returns>
        bool SavePostUser( int userId, string postId );
        /// <summary>
        /// 根据岗位集合获取岗位名称，部门-岗位模式
        /// </summary>
        /// <param name="collection"></param>
        /// <returns></returns>
        dynamic GetPostNameBySysPostUser( ICollection<Domain.SYS_POST_USER> collection );
    }
}
