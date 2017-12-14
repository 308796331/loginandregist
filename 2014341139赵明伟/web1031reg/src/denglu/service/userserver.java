package denglu.service;

import java.util.List;

import denglu.pojo.book;
import denglu.pojo.user;

public interface userserver {

	/**
	 * 注册判定
	 * @param name
	 * @return
	 */
	public user findName(String name);
	
	/**
	 * 添加用户
	 * @param u
	 */
	public void adduser( user u);
	
	/**
	 * 登录判定
	 * @param name
	 * @param pwd
	 */
	public boolean loginByNameAndPwd(String name, String pwd);
	/**
	 * 根据姓名修改密码
	 */
	public  int updatePwd(String name, String pwd );
	/**
	 * 查询表，返回结果集
	 * @return
	 */
	
	public List<book> selectAllBook() ;
	/**
	 * 删除图书
	 * @param num
	 */
	public void deleteById(int num);
	
	/**
	 * 查询图书
	 */
	public List<book> selectBook( String str);
	
	public book findbookById(int num);
}
