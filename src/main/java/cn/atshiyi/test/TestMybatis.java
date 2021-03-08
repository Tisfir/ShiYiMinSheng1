package cn.atshiyi.test;

import cn.atshiyi.dao.Com_typeDao;
import cn.atshiyi.dao.CommodityDao;
import cn.atshiyi.dao.OrdersDao;
import cn.atshiyi.dao.UserDao;
import cn.atshiyi.domain.Com_type;
import cn.atshiyi.domain.Commodity;
import cn.atshiyi.domain.Orders;
import cn.atshiyi.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.InputStream;
import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:31
 */
public class TestMybatis {
    @Autowired
    SqlSession sqlSession;
    private InputStream in;
    private UserDao userDao;
    private OrdersDao ordersDao;
    private CommodityDao commodityDao;
    private Com_typeDao com_typeDao;

    @Before
    public void before() throws Exception {
        //编写程序，加载mybatis的配置文件
        in = Resources.getResourceAsStream("SqlMapConfig.xml");
        //创建SqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        //使用工厂创建SqlSession对象
        sqlSession = factory.openSession();
        //获取到代理对象
        userDao = sqlSession.getMapper(UserDao.class);
        ordersDao=sqlSession.getMapper(OrdersDao.class);
        commodityDao=sqlSession.getMapper(CommodityDao.class);
        com_typeDao=sqlSession.getMapper(Com_typeDao.class);
    }
    @After
    public void after() throws Exception {
        //关闭资源
        sqlSession.close();
        in.close();
    }
    @Test
    public void run1() throws Exception {
        //查询所有的账户信息
        List<User> list = userDao.findAll();
        for (User user : list) {
            System.out.println("---每个用户的信息-------");
            System.out.println(user);
            System.out.println(user.getUsername());
        }

    }

    //查询所有的订单信息
    @Test
    public void run2(){
        List<Orders> list=ordersDao.findAll();
        for (Orders orders:list){
            System.out.println("查询每个订单");
            System.out.println(orders);
            System.out.println(orders.getUser().getUsername());
        }
    }

    //查询所有的商品信息信息
    @Test
    public void run3(){
        List<Commodity> list=commodityDao.findAll();
        Commodity commodity1 = commodityDao.findById(2);
        System.out.println(commodity1);
        for (Commodity commodity:list){
            System.out.println("查询每个订单");
            System.out.println(commodity);
        }
        System.out.println(commodity1.getCom_type());
    }
    //查询订单详情
    @Test
    public  void run4(){
        Orders orders=ordersDao.findById(4);
        System.out.println(orders);
        System.out.println(orders.getCommodities());
        System.out.println(orders.getCommodities());
    }
    //测试类型查询
    @Test
    public  void run5(){
        Com_type com_type=com_typeDao.findById(2);
        System.out.println(com_type);
    }

}
