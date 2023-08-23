
include "common.thrift"
include "user/admin_user.thrift"

service ApiService {
    // 创建管理员
    admin_user.CreateAdminUserResponse CreateAdminUser(1: admin_user.CreateAdminUserRequest req) (api.post="/admin_user", api.name="创建管理员nn")
    // 删除管理员
    common.EmptyResponse DeleteAdminUser(1: admin_user.DeleteAdminUserRequest req) (api.delete="/admin_user/:id", api.name="删除管理员nn")
    /* 获取管理员信息*/
    admin_user.GetAdminUserResponse GetAdminUser(1: admin_user.GetAdminUserRequest req) (api.get="/admin_user", api.name="获取管理员信息nn")
    # 更新管理员信息
    common.EmptyResponse UpdateAdminUser(1: admin_user.UpdateAdminUserRequest req) (api.put="/admin_user/:id", api.name="更新管理员信息nn")
}
