package cn.atshiyi.dao;

import cn.atshiyi.domain.Admin;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:38
 */
@Repository
public interface AdminDao {
    //一、查询所有管理员信息
    @Select("select * from admin")
    public List<Admin> findAll();
}
