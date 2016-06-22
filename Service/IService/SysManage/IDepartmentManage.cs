using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Service.IService
{
    /// <summary>
    /// 部门管理接口
    /// </summary>
    public interface IDepartmentManage:IRepository<Domain.SYS_DEPARTMENT>
    {
        /// <summary>
        /// 递归部门列表，返回按级别排序
        /// </summary>
        /// <param name="list"></param>
        /// <returns></returns>
        List<Domain.SYS_DEPARTMENT> RecursiveDepartment( List<Domain.SYS_DEPARTMENT> list );
        /// <summary>
        /// 根据部门ID递归部门列表，返回子部门+本部门的对象集合
        /// </summary>
        /// <param name="parentId"></param>
        /// <returns></returns>
        List<Domain.SYS_DEPARTMENT> RecursiveDepartment( string parentId );
        /// <summary>
        /// 自动创建部门编号
        /// </summary>
        /// <param name="parentId"></param>
        /// <returns></returns>
        string CreateCode( string parentId );
        /// <summary>
        /// 部门是否存在下级部门
        /// </summary>
        /// <param name="idlist"></param>
        /// <returns></returns>
        bool DepartmentIsExists( string idlist );
        /// <summary>
        /// 根据部门ID获取部门名称，不存在返回空
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        string GetDepartmentName( string id );
        /// <summary>
        /// 显示错层方法
        /// </summary>
        /// <param name="name"></param>
        /// <param name="level"></param>
        /// <returns></returns>
        object GetDepartmentName( string name, decimal? level );
        /// <summary>
        /// 获取部门父级列表
        /// </summary>
        /// <returns></returns>
        System.Collections.IList GetDepartmentByDetail();
    }
}
