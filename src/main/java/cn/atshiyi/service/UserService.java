package cn.atshiyi.service;

import cn.atshiyi.domain.User;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-05-14:23
 */
public interface UserService {
    public List<User> findAll();
    public User saveUser(User user);
    public User findById(Integer id);

}
