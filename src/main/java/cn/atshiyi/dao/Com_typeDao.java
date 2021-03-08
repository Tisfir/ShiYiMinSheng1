package cn.atshiyi.dao;

import cn.atshiyi.domain.Com_type;
import cn.atshiyi.domain.Commodity;
import cn.atshiyi.domain.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:39
 */
@Repository
public interface Com_typeDao {
    //一、查询所有产品类型信息
    @Select("select * from com_type")
    public List<Com_type> findAll();

    @Select("select * from com_type where id=#{id}")
    public Com_type findById(Integer id);

}
