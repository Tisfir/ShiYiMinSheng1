package cn.atshiyi.controller;

import cn.atshiyi.domain.Message;
import cn.atshiyi.domain.User;
import cn.atshiyi.service.UserService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.bcel.internal.generic.NEW;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

/**
 * @author L.N
 * @creat 2021-03-05-14:50
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    //查询所有用户信息（用json的形式）
    @RequestMapping(value = "/findalljson",method = RequestMethod.GET)
    @ResponseBody
    public Message getUser(){ //pathVariable是指从路径中取出ID的中的值
        List<User> user = userService.findAll();
        return Message.success().add("user",user);
    }
/*    //查询所有用户信息（不用json的形式）
    @RequestMapping(value = "/findall",method = RequestMethod.GET)
    public String getUser(Model model){ //pathVariable是指从路径中取出ID的中的值
        List<User> user = userService.findAll();
        model.addAttribute("user",user);
        return "user";
    }*/

    @RequestMapping(value = "/findall",method = RequestMethod.GET)
    public String getUser(@RequestParam(value = "pn",defaultValue = "1") Integer pn,Model model){ //pathVariable是指从路径中取出ID的中的值
        System.out.println("findAll方法没问题，执行了，springmvc 环境成功");
        //这不是一个分页查询分页查询要加入插件等等
        //引入pagehelper插件
        //在查询之前只需要调用,传入页码，以及每页的数据，每页5条数据
        PageHelper.startPage(pn,5);
        //start后面紧跟的这个查询就是一个分页查询
        List<User> list = userService.findAll();
        //使用pageinfo包装查询后的结果，只需要将pageinfo交给页面就行
        //包装了详细的分页信息，包括我们查询出来的数据
        PageInfo page=new PageInfo(list,5);
        model.addAttribute("pageinfo",page);
        return "user";
    }

    @RequestMapping("/saveUser")
    public String saveUser(@RequestParam("file1")MultipartFile file1,HttpServletRequest request, User user) throws IOException {
        System.out.println("文件上传");
        String path=request.getSession().getServletContext().getRealPath("/uploads");
        File file=new File(path);
        if (!file.exists()){
            file.mkdirs();
        }
        String filename = file1.getOriginalFilename();
        String uuid=UUID.randomUUID().toString().replace("-"," ");
        filename=uuid+"_"+filename;
        file1.transferTo(new File(path,filename));//往这个路径穿这个文件
        user.setPic(filename);//文件保存到实体类对应的属性上面
        userService.saveUser(user);
        return "redirect:findall?pn=200";
    }//不加校验之前的方法书写

//测试文件上传
    @RequestMapping("fileupload")
    public String upload(HttpServletRequest request,MultipartFile pic) throws IOException {
        System.out.println("文件上传");
        String path=request.getSession().getServletContext().getRealPath("/uploads");
        File file=new File(path);
        if (!file.exists()){
            file.mkdirs();
        }
        String filename = pic.getOriginalFilename();
        String uuid=UUID.randomUUID().toString().replace("-"," ");
        filename=uuid+"_"+filename;
        pic.transferTo(new File(path,filename));//往这个路径穿这个文件
        return "user";

    }
}
