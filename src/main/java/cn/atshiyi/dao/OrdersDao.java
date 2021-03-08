package cn.atshiyi.dao;

import cn.atshiyi.domain.Commodity;
import cn.atshiyi.domain.Orders;
import cn.atshiyi.domain.User;
import org.apache.ibatis.annotations.*;
import org.apache.ibatis.mapping.FetchType;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:40
 */
@Repository
public interface OrdersDao {
    //一、查询所有订单信息
    @Select("select * from orders")
    @Results(id="order_userMap",value = {
            @Result(id=true,column="id",property = "id" ),
            @Result(column="u_name",property = "u_name" ),
            @Result(column="u_addr",property = "u_addr" ),
            @Result(column="creat_time",property = "creat_time" ),
            @Result(column="cost",property = "cost" ),
            @Result(column="u_phone",property = "u_phone" ),
            @Result(property = "user",column = "u_id",javaType = User.class,one = @One( select="cn.atshiyi.dao.UserDao.findById")),
    })
    public List<Orders> findAll();

    @Select("select * from orders where id=#{ordersId}")
    @Results(id="order_commodityMap",value = {
            @Result(id=true,column="id",property = "id" ),
            @Result(column="u_name",property = "u_name" ),
            @Result(column="u_addr",property = "u_addr" ),
            @Result(column="creat_time",property = "creat_time" ),
            @Result(column="cost",property = "cost" ),
            @Result(column="u_phone",property = "u_phone" ),
            @Result(property = "user",column = "u_id",javaType = User.class,one = @One( select="cn.atshiyi.dao.UserDao.findById")),
            @Result(property = "commodities",column = "id",javaType = java.util.List.class,many = @Many(select = "cn.atshiyi.dao.CommodityDao.findByOrderId"))
    })
    Orders findById(Integer ordersId);
}
