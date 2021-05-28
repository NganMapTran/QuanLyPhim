package com.asm.utils;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Embeddable;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import com.asm.bean.Report;
import com.asm.bean.Video;


public class VideoDAO {
	
	EntityManager em = JpaUtils.getEntityManager();
	
	@Override
	protected void finalize() throws Throwable {
		em.close();// dong EntiryManager khi DAO bi giai phong
		super.finalize();
	}
	
	public Video create(Video entity) {
		try {
			em.getTransaction().begin();						
			em.persist(entity);
			em.getTransaction().commit();
			return entity;
		}catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	public Video update(Video entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();
			return entity;
		}catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	public Video remove(String id) {
		try {
			Video entity = this.findById(id);
			em.getTransaction().begin();			
			em.remove(entity);
			em.getTransaction().commit();
			return entity;
		}catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
	}
	public Video findById(String id) {
		Video entity = em.find(Video.class, id);
		return entity;
	}
	public List<Video> findAll(){
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list =  query.getResultList();				
		return list;
	}
	
	public List<Video> findkeyword(String input) {
		String sqlString="select v from Video v where v.title like :vtitle";
		TypedQuery<Video> query = em.createQuery(sqlString, Video.class);
		query.setParameter("vtitle", "%" + input + "%");
		List<Video> list = query.getResultList();
		return list;
	}
	
	public List<Report> toTals() {
		String jpql = "SELECT new Report(f.video.title,count(f),max(f.likeDate),min(f.likeDate)) "
				+ "FROM Favorite f "
				+ "GROUP BY f.video.title";	
		TypedQuery<Report> query = em.createQuery(jpql, Report.class);
		List<Report> list = query.getResultList();
		return list;
	}
	
}
