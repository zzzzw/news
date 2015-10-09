package com.zzzzw.www.action;

import java.util.List;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

import com.zzzzw.www.common.BaseAction;
import com.zzzzw.www.dao.DhDAO;
import com.zzzzw.www.entity.Login;
import com.zzzzw.www.entity.News;

/*
 * Action相当于DAO层与JSP层中间的传达室，Action有属性和方法，属性 是接发信件的信箱，函数 是接

 发信件的传达人
 * 
 */

//struts注解
@SuppressWarnings("serial")
@Results( {
		@Result(name = "q1", location = "/news/show.jsp"),
		@Result(name = "q2", location = "/news/show1.jsp"),
		@Result(name = "adminList", location = "/news/admin.jsp"),
		@Result(name = "add", location = "dh!showAdmin.action", type = "redirect"),
		@Result(name = "update", location = "/news/admin1.jsp"),
		@Result(name = "delete", location = "dh!showAdmin.action", type = "redirect"),

})
public class DhAction extends BaseAction {
	private DhDAO dao = new DhDAO();
	private List<News> xwlist;
	private News entity;
	private Login entity1;
	

	public Login getEntity1() {
		return entity1;
	}

	public void setEntity1(Login entity1) {
		this.entity1 = entity1;
	}

	private String use;
	private String pwd;
	

	public String getUse() {
		return use;
	}

	public void setUse(String use) {
		this.use = use;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	// 全部新闻页面
	public String showAll() throws Exception {
		xwlist = dao.listall();
		return "q1";
	}

	// 内容页
	public String showDetail() throws Exception {

		System.out
				.println("before:" + entity.getId() + "," + entity.getTitle());
		entity = dao.get(entity.getId());
		// 判断，若为null,则为第一次点击
		if (entity.getNum() == null) {
			entity.setNum(0);
		}
		// 阅读量+1
		entity.setNum(entity.getNum() + 1);
		// 更新阅读量
		dao.update(entity);
		System.out.println("after:" + entity.getId() + "," + entity.getTitle());
		return "q2";
	}

	// 显示管理页面
	public String showAdmin() throws Exception {

		xwlist = dao.listall();
		return "adminList";
	}

	// 管理员保存按钮
	public String add() throws Exception {
		// add新增、update更新、save自动判断是新增还是更新
//		if (entity.getId() != null)
//			dao.update(entity);
//		else
//			dao.add(entity);
		// 根据主键是否为Null,自动判断是新增还是修改
		// 根据主键是否为Null,自动判断是新增还是修改
 dao.save(entity);
		return "add";
	}

	// 管理员修改
	public String update() throws Exception {
		System.out.println(entity.getId());
		entity = dao.get(entity.getId());
		return "update";
	}

	// 管理员删除
	public String delete() throws Exception {

		dao.delete(entity.getId());
		return "delete";
	}

	public String search() throws Exception {
		System.out.println(entity.getTitle());
		System.out.println(entity.getPubdate());
		xwlist = dao.searchByTD(entity.getTitle(), entity.getPubdate());
		return "adminList";
	}
	
	
	//login
	/*private String login() throws Exception
	{
		System.out.println(use);
		System.out.println(pwd);
		if(entity1.getPwd().equals(dao.get(use)));
		return "";
		
	}*/

	public DhDAO getDao() {
		return dao;
	}

	public void setDao(DhDAO dao) {
		this.dao = dao;
	}

	public List<News> getXwlist() {
		return xwlist;
	}

	public void setXwlist(List<News> xwlist) {
		this.xwlist = xwlist;
	}

	public News getEntity() {
		return entity;
	}

	public void setEntity(News entity) {
		this.entity = entity;
	}

}
