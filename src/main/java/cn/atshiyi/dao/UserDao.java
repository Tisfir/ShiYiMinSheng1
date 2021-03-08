package cn.atshiyi.dao;

import cn.atshiyi.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:19
 */
@Repository
public interface UserDao {
    //一、查询所有用户信息
    @Select("select * from user")
    public List<User> findAll();

    //二、保存用户信息
    @Insert("insert into user (username,password,phone,gender,email,creat_time,pic) values (#{username}," +
            "#{password},#{phone},#{gender},#{email},now(),#{pic})")
    public void saveUser(User user);

    //三、根据ID查询信息
    @Select("select * from user where id=#{id}")
    public User findById(Integer id);
}
