package cn.atshiyi.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author L.N
 * @creat 2021-03-06-16:08
 * 日期转换器
 */
public class DateUtils {
//    日期转换成字符串
    public static String dateToString(Date date,String patt){
        SimpleDateFormat sdf=new SimpleDateFormat(patt);
        String format = sdf.format(date);
        return format;
    }
    //    字符串转换成日期
    public static Date stringToDate(String str,String patt) throws ParseException {
        SimpleDateFormat sdf=new SimpleDateFormat(patt);
        Date parse = sdf.parse(str);
        return parse;
    }
    public static String GetTime(){
        SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dff=df.format(new Date());
        return dff;
    }

}
