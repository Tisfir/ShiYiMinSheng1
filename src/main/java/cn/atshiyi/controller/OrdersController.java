package cn.atshiyi.controller;

import cn.atshiyi.domain.Message;
import cn.atshiyi.domain.Orders;
import cn.atshiyi.domain.User;
import cn.atshiyi.service.OrdersService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-07-17:10
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {
    @Autowired
    private OrdersService ordersService;

    //查询所有订单信息（不用json的形式）
    @RequestMapping(value = "/findall",method = RequestMethod.GET)
    public String getOrder(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model){ //pathVariable是指从路径中取出ID的中的值
        System.out.println("findAll方法没问题，执行了，springmvc 环境成功");
        //这不是一个分页查询分页查询要加入插件等等
        //引入pagehelper插件
        //在查询之前只需要调用,传入页码，以及每页的数据，每页5条数据
        PageHelper.startPage(pn,5);
        //start后面紧跟的这个查询就是一个分页查询
        List<Orders> list = ordersService.findAll();
        //使用pageinfo包装查询后的结果，只需要将pageinfo交给页面就行
        //包装了详细的分页信息，包括我们查询出来的数据
        PageInfo page=new PageInfo(list,5);
        model.addAttribute("pageinfo",page);
        return "orders";
    }

    //查询订单详情
    @RequestMapping(value = "/findallById/{id}",method = RequestMethod.GET)
    public String getOrder_details( @PathVariable("id") Integer id,Model model){ //pathVariable是指从路径中取出ID的中的值
        Orders orders = ordersService.findById(id);
        model.addAttribute("details",orders);
        return "orders_details";
    }

}
