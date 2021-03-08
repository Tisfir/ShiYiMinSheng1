package cn.atshiyi.controller;

import cn.atshiyi.domain.SysLog;
import cn.atshiyi.service.SysLogService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-08-19:39
 */
@Controller
@RequestMapping("/sysLog")
public class SyslogController {
    @Autowired
    private SysLogService sysLogService;

    @RequestMapping("/findAll")
    public String findAll(@RequestParam(value = "pn",defaultValue = "1") Integer pn, Model model) throws Exception {
        System.out.println("findAll方法没问题，执行了，springmvc 环境成功");
        //这不是一个分页查询分页查询要加入插件等等
        //引入pagehelper插件
        //在查询之前只需要调用,传入页码，以及每页的数据，每页5条数据
        PageHelper.startPage(pn,5);
        //start后面紧跟的这个查询就是一个分页查询
        List<SysLog> list= sysLogService.findAll();
        PageInfo page=new PageInfo(list,5);
        model.addAttribute("pageinfo",page);
        return "syslogList";
    }


}
