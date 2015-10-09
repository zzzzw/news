package com.zzzzw.www.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;

import com.zzzzw.www.common.BaseDAO;
import com.zzzzw.www.common.DataZh;
import com.zzzzw.www.entity.News;



public class DhDAO extends BaseDAO<News>{
  //查询新闻
	public List<News> searchByTD(String title,Date pubdate) {
		
		List<News> result=new ArrayList();		
		String hql = "from News n where 1=1 ";
			
		List<Object> obj = new ArrayList<Object>();
		try
		{
			if(title != null && !title.equals("")) {
				hql += "and n.title like ? ";  //组合hql
				obj.add("%" + title + "%");    //组合参数
			}
			if(pubdate != null && !pubdate.equals("")) {
				hql +="and n.pubdate=?";
				obj.add(pubdate);
			}
			
			result=this.getListByHQL(hql, obj);
		}
		catch(Exception e) {		     
		}
		finally{			
			gs().close();
		}
		
		return result;
		
	}
    
      /*  public List<String []> btList() throws Exception
        {
            
            String s="SELECT id,biaoti  from news ";
            
            
            Query queryString=gs().createQuery(s);
            
            
            
            return DataZh.ObjArrtoStrArr(queryString.list());
        }
	public List<String []> xiangxiList(String bianhao) throws Exception
	{
		List<String []> tz=new ArrayList<String[]>();
		
		
		
		
		
		
		return tz;
		
	}*/
    //直接调用写好的类淡出可以了。在action中写代码

}
