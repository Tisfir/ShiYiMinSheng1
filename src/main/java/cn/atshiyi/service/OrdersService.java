package cn.atshiyi.service;

import cn.atshiyi.domain.Orders;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:42
 */
public interface OrdersService {
    public List<Orders> findAll();

    Orders findById(Integer id);
}
