import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by shuai
 * on 2017/6/10.
 */
@WebServlet("/HelloForm")
public class HelloForm extends HttpServlet {

    private static final long serialVersionUID = 1;

    // JDBC 驱动名及数据库 URL
    private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/csu"; // 同DataGrip

    // 数据库的用户名与密码，需要根据自己的设置
    private static final String USER = "root";
    private static final String PASS = "shuai";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 获取输入的学生姓名
        String name = new String(request.getParameter("name").getBytes(), "UTF-8");

        try {
            // 注册 JDBC 驱动器
            Class.forName(JDBC_DRIVER);

            // 打开一个连接
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // 执行sql查询
            Statement stmt = conn.createStatement();

//            String sql = "SELECT * FROM Grade WHERE no = \"0902140133\"; ";

            // 注意String要加引号
            String sql = "SELECT * FROM Grade " +
                    "WHERE no = (SELECT sNo FROM Student WHERE sName = \"" + name + "\");";

            // 执行查询得到结果集
            ResultSet rs = stmt.executeQuery(sql);

            // 向jsp页面传递数据
            RequestDispatcher rd = request.getRequestDispatcher("temp.jsp");
            request.setAttribute("data", rs);
            rd.forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
