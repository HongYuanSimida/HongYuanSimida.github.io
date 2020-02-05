package servlet;

import com.alibaba.fastjson.JSON;
import pojo.News;
import utils.SelectUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 活动servlet
 */
@WebServlet("/activeServlet")
public class activeServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json;charset=UTF-8");
        List<News> list = null;
        try {
            list = SelectUtils.select(" SELECT * FROM article WHERE TYPE='活动'");//查询新闻
        } catch (Exception e) {
            e.printStackTrace();
        }
        String s = JSON.toJSONString(list);//用fastJson转换成Json格式返回给前台
        PrintWriter out = response.getWriter();
        out.println(s);
        out.flush();
        out.close();
    }
}
