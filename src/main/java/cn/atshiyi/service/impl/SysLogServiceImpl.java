package cn.atshiyi.service.impl;

import cn.atshiyi.dao.SyslogDao;
import cn.atshiyi.domain.SysLog;
import cn.atshiyi.service.SysLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-08-19:14
 */
@Service
@Transactional
public class SysLogServiceImpl implements SysLogService {
    @Autowired
    private SyslogDao syslogDao;

    @Override
    public void save(SysLog sysLog) {
        syslogDao.save(sysLog);
    }

    @Override
    public List<SysLog> findAll() {
        System.out.println("查询日志业务层");
        return syslogDao.findall();
    }
}
