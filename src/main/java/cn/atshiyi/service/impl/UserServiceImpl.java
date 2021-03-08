package cn.atshiyi.service.impl;

import cn.atshiyi.dao.UserDao;
import cn.atshiyi.domain.User;
import cn.atshiyi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

/**
 * @author L.N
 * @creat 2021-03-05-14:24
 */
@Service("User")
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public List<User> findAll() {
        System.out.println("查询所有用户执行中");

        return userDao.findAll();
    }
    @Override
    public User saveUser(User user){
        System.out.println("saveUser业务层执行……");
        userDao.saveUser(user);
        return user;
    }
    public User findById(Integer id){
        System.out.println("根据Id查询用户");
        return userDao.findById(id);
    }

}
