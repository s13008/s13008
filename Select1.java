import java.sql.*;
import java.util.Scanner;
public class Select1 {
  private String _user = "s13008";
  private String _pass = "password";
  private String _host = "172.16.40.4";
  private String _sid = "db11";

  public static void main(String[] args){

    Select1 sample = new Select1();
    try {
      sample.select();
    }catch(Exception e){
      e.printStackTrace();
    }
  }

  private void select() throws Exception{
    Connection conn = null;
    PreparedStatement st = null;
    ResultSet rs = null;
    Scanner stdIn = new Scanner(System.in);

    try {
      Class.forName("oracle.jdbc.driver.OracleDriver");
      conn = DriverManager.getConnection(
          "jdbc:oracle:thin:@" + _host + ":1521:" + _sid, _user, _pass);
     

      String sql = "select e.empno,e.ename,e.job,m.ename,d.dname,d.loc ";
      sql += "from employees e left outer join employees m ";
      sql += "on e.mgr = m.empno ";
      sql += "join departments d ";
      sql += "on e.deptno = d.deptno";

      st = conn.prepareStatement(sql);

      rs = st.executeQuery();

      while(rs.next()){
        String e_empno = rs.getString(1);
        String e_ename = rs.getString(2);
        String e_job = rs.getString(3);
        String m_ename = rs.getString(4);
        String d_dname = rs.getString(5);
        String d_loc = rs.getString(6);

        System.out.printf("部門番号： %s\t部門名： %s\t職種:  %s\t社員名:  %s\t部署名:  %s\t所属:  %s\n", e_empno,e_ename,e_job,m_ename,d_dname,d_loc);
      }
        
      String sql1 = "select e.empno,e.ename,e.job,m.ename,d.dname,d.loc,e.sal,grade ";
      sql1 += "from employees e left outer join employees m ";
      sql1 += "on e.mgr = m.empno ";
      sql1 += "join departments d ";
      sql1 += "on e.deptno = d.deptno ";
      sql1 += "join salgrades  ";
      sql1 += "on e.sal between losal and hisal ";
      sql1 += "where e.empno = ?";

      System.out.print("社員番号を入力してください:");
      int empno = stdIn.nextInt();
      st = conn.prepareStatement(sql1);
      st.setInt(1, empno);
      rs = st.executeQuery();

      while(rs.next()){
        int e_empno = rs.getInt(1);
        String e_ename = rs.getString(2);
        String e_job = rs.getString(3);
        String m_ename = rs.getString(4);
        String d_dname = rs.getString(5);
        String d_loc = rs.getString(6);
        int e_sal = rs.getInt(7);
        String grade = rs.getString(8);

        System.out.printf("部門番号： %s\t部門名： %s\t職種:  %s\t社員名:  %s\t部署名:  %s\t所属:  %s\t給与:  %s\t給与の等級:  %s\n", e_empno,e_ename,e_job,m_ename,d_dname,d_loc,e_sal,grade);
      }

    }catch(ClassNotFoundException e){
      throw e;
    }catch(SQLException e){
      throw e;
    }catch(Exception e){
      throw e;
    }finally{
      if(conn != null){
        conn.close();
      }
      if(st != null){
        st.close();
        st = null;
      }
      if(rs != null){
        rs.close();
        rs = null;
      }
    }
  }
}
