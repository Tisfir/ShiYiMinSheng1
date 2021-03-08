package cn.atshiyi.service;

import cn.atshiyi.domain.SysLog;

import java.util.List;

/**
 * @author L.N
 * @creat 2021-03-08-19:13
 */
public interface SysLogService {
    public void save(SysLog sysLog);

    List<SysLog> findAll();
}
