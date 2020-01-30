# 前期准备

* 数据库：mysql8.0

* servlet：4.0

* jar包：![image-20200130121950190](C:\Users\bilibil\Desktop\GithubSubmit\image-20200130121950190.png)

# 目录结构

* ![image-20200130122426002](C:\Users\bilibil\Desktop\GithubSubmit\image-20200130122426002.png)

# 访问流程
1. 访问index.html，页面加载完成发送ajax请求到indexServlet

   ![image-20200130123844042](C:\Users\bilibil\Desktop\GithubSubmit\image-20200130123844042.png)


2. indexServlet调用Selectutils类的select方法，该方法是查询数据库中的article表的数据并返回，然后封装成List集合返回。

   ![image-20200130123929402](C:\Users\bilibil\Desktop\GithubSubmit\image-20200130123929402.png)

3. 用fastjson把List集合中的新闻对象News变成json数据，然后调用response.getWriter()方法传回给index.html

   ![image-20200130124050471](C:\Users\bilibil\Desktop\GithubSubmit\image-20200130124050471.png)

4. index.html的ajax方法接收indexServlet传回的json数据，然后展示出来

   ![image-20200130124153899](C:\Users\bilibil\Desktop\GithubSubmit\image-20200130124153899.png)

# 实际效果

![image-20200130124309178](C:\Users\bilibil\Desktop\GithubSubmit\image-20200130124309178.png)