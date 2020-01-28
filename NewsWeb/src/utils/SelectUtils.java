package utils;

import pojo.News;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SelectUtils {
    private static News news;
    public static List<News> select(String sql) throws Exception {
        List<News> list=new ArrayList<>();
        //取得连接对象
        Connection conn = jdbc.getConnection();
        //准备sql语句
        //取得预编译对象
        PreparedStatement pst = conn.prepareStatement(sql);
        //执行sql语句
        ResultSet rs = pst.executeQuery();
        //判断返回值是否存在，并取出返回值

        while (rs.next()) {
            int id = rs.getInt("id");
            String title = rs.getString("title");
            String type = rs.getString("type");
            String content = rs.getString("content");
            String time = rs.getString("time");
            if(time==null)
            {
                continue;
            }
            news=new News(id,title,time,type,content);
            list.add(news);
        }
        jdbc.close(conn);
        return list;

    }
}
