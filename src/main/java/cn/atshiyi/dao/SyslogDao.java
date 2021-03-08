package cn.atshiyi.dao;

import cn.atshiyi.domain.SysLog;
import org.apache.ibatis.annotations.Insert;

/**
 * @author L.N
 * @creat 2021-03-08-19:16
 */
public interface SyslogDao {
    @Insert("insert into syslog (visitTime,userName,ip,url,executionTime,method) values(#{visitTime},#{userName},#{ip},#{url},#{executionTime},#{method})")
    public void save(SysLog sysLog);
}
