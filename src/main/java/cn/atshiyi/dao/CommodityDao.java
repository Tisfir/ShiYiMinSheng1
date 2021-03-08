package cn.atshiyi.dao;

import cn.atshiyi.domain.Com_type;
import cn.atshiyi.domain.Commodity;
import cn.atshiyi.domain.User;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:40
 */
@Repository
public interface CommodityDao {
    //一、查询所有产品信息
    @Select("select * from commodity")
    public List<Commodity> findAll();
    //三、根据ID查询信息
    @Select("select * from commodity where c_id=#{c_id}")
    @Results(id="commodity_com_typeMap",value = {
            @Result(id=true,column="c_id",property = "c_id" ),
            @Result(column="c_name",property = "c_name" ),
            @Result(column="pic",property = "pic" ),
            @Result(column="price",property = "price" ),
            @Result(column="num",property = "num" ),
            @Result(property = "com_type",column = "t_id",javaType = Com_type.class,one = @One( select="cn.atshiyi.dao.Com_typeDao.findById")),
    })
    public Commodity findById(Integer c_id);

    //四、根据订单ID查询出所有商品
   @Select("select * from commodity where c_id in (select com_id from orders_commodity where order_id=#{ordersId})")
    public List<Commodity> findByOrderId(String ordersId);
}
