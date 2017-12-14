package denglu.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import denglu.pojo.book;
import denglu.pojo.user;
import denglu.service.userserver;

public class userdao implements userserver {

	public Statement st=null;
	public static userdao dao= new userdao();
	  private userdao(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
		st = con.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	  
	  public static userdao getInstance(){
		  return dao;
	  }

	public user findName(String name) {
		user o=null;
		String sql="select * from user where name='"+name+"'";
		try {
			ResultSet set = st.executeQuery(sql);
			while(set.next()){
				String n = set.getString("name");
				String p = set.getString("pwd");
				String s = set.getString("sex");
				o=new user (n,p,s);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return o;
	}

	public void adduser(user u) {
		String n = u.getName();
		String p = u.getPwd();
		String s = u.getSex();
		
		String sql="insert into user (name,pwd,sex) values('"+n+"','"+p+"','"+s+"')";
		try {
			st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public boolean loginByNameAndPwd(String uname, String upwd) {
		
		String sql="select * from user where name='"+uname +"'and pwd='"+upwd+"'";
		String n="";
		String p="";
		try {
			ResultSet set = st.executeQuery(sql);
			while(set.next()){
				 n= set.getString("name");
				 p = set.getString("pwd");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(n.equals(uname) && p.equals(upwd)){
			return true;
		}else{
			return false;
		}

		
	}


	public int updatePwd(String uname,String upwd) {
		String sql="update user set pwd='"+upwd+"' where name='"+uname+"'";
		int num = 1;
		try {
			num = st.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return num;
	}

	public List<book> selectAllBook() {
		ArrayList<book> books = new ArrayList<book>();
		
		
		try {
			String sql="select * from t_book";
			ResultSet set = st.executeQuery(sql);
			while(set.next()){
				int id= set.getInt("id");
				String bookname = set.getString("bookName");
				double price = set.getDouble("price");
				String author = set.getString("author");
				int typeid = set.getInt("bookTypeId");
				
				book b = new book(id, bookname, price, author, typeid);
				books.add(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return books;
		
	}

	public void deleteById(int num) {
	  
		String sql="delete from t_book where id="+num;
		try {
			st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<book> selectBook( String str) {
		String sql="select * from t_book where bookName like '%"+str+"%' or author like '%"+str+"%'";
		   ArrayList<book> books = new ArrayList<book>();
		   try {
			ResultSet set = st.executeQuery(sql);
			while(set.next()){
				int id= set.getInt("id");
				String bookname = set.getString("bookName");
				double price = set.getDouble("price");
				String author = set.getString("author");
				int typeid = set.getInt("bookTypeId");
				
				book b = new book(id, bookname, price, author, typeid);
				books.add(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		   
		   
		return books;
	}

	public book findbookById(int num) {
		
		String sql="select * from t_book where id="+num+"";
		book b=null;
		try {
			ResultSet set = st.executeQuery(sql);
			while(set.next()){
				int id= set.getInt("id");
				String bookname = set.getString("bookName");
				double price = set.getDouble("price");
				String author = set.getString("author");
				int typeid = set.getInt("bookTypeId");
				
				 b = new book(id, bookname, price, author, typeid);
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return b;
		
	}

	public void updateBookById(int num, String bookname, double price,
			String author, int booktypeid) {
		
		String sql=" update t_book set  bookName='"+bookname+"',price="+price+",author='"+author+"',bookTypeId="+booktypeid+" where id="+num;
		try {
			st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	

	public void addBook(int num, String bookname, double price, String author,
			int booktypeid) {
	
		String sql="insert into t_book (id,bookName,price,author,bookTypeId) values ("+num+",'"+bookname+"',"+price+",'"+author+"',"+booktypeid+")";
		try {
			st.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

		
	}
}














