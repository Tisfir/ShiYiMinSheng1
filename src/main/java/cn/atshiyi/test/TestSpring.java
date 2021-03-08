package cn.atshiyi.test;

import cn.atshiyi.service.UserService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * @author L.N
 * @creat 2021-03-05-14:27
 */
public class TestSpring {
    @Test
    public void run1(){
        //加载配置文件
        ApplicationContext ac= new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
        //获取对象
        UserService at=(UserService) ac.getBean("User") ;
        //调用方法
        at.findAll();
    }
}
