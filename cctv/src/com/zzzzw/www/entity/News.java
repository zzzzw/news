package com.zzzzw.www.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

//加注解
@Entity
@Table(name="news")
public class News 
{
    @Id
    @GenericGenerator(name = "generator", strategy = "identity")
    @GeneratedValue(generator = "generator")
    private Integer id;
    private String title;
    private Date pubdate;
    private String content;
    private Integer num;
    
    
    public Integer getNum() {
        return num;
    }
    public void setNum(Integer num) {
        this.num = num;
    }
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public Date getPubdate() {
        return pubdate;
    }
    public void setPubdate(Date pubdate) {
        this.pubdate = pubdate;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    
    
 
    
    

}
