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
import java.sql.SQLException;
import java.util.List;

@WebServlet("/indexServlet")
public class indexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        List<News> list = null;
        try {
            list = SelectUtils.select("SELECT * FROM article");
        } catch (Exception e) {
            e.printStackTrace();
        }
        String s = JSON.toJSONString(list);
        PrintWriter out = response.getWriter();
        out.println(s);
        out.flush();
        out.close();

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            doPost(request,response);
    }
}
