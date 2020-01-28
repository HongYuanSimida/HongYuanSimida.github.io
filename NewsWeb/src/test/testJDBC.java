package test;

import pojo.News;
import utils.SelectUtils;

import java.util.List;

public class testJDBC {
    public static void main(String[] args) throws Exception {
        List<News> select = SelectUtils.select("SELECT * FROM article");
        for(News news:select){
            System.out.println(news);
        }
    }
}
