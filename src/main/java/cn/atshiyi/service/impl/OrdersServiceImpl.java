package cn.atshiyi.service.impl;

import cn.atshiyi.dao.OrdersDao;
import cn.atshiyi.domain.Orders;
import cn.atshiyi.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-07-17:21
 */
@Service("Orders")
@Transactional
public class OrdersServiceImpl implements OrdersService {
@Autowired
private OrdersDao ordersDao;
    @Override
    public List<Orders> findAll() {
        System.out.println("查询所有的订单信息");

        return ordersDao.findAll();
    }

    @Override
    public Orders findById(Integer id) {
        System.out.println("查询订单详情");
        return ordersDao.findById(id);
    }
}
