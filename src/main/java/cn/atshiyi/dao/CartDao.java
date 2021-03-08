package cn.atshiyi.dao;

import cn.atshiyi.domain.Cart;
import cn.atshiyi.domain.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:39
 */
@Repository
public interface CartDao {
    //一、查询所有购物车信息
    @Select("select * from cart")
    public List<Cart> findAll();
}
