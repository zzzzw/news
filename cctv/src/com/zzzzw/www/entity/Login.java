package com.zzzzw.www.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
//��ע��

import org.hibernate.annotations.GenericGenerator;
	@Entity
	@Table(name="login")
public class Login {
		 @Id
		    @GenericGenerator(name = "generator", strategy = "identity")
		    @GeneratedValue(generator = "generator")
		    private Integer id;
		 private String use;
		 private String pwd;
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
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
		 
		 
	
	
	

}
