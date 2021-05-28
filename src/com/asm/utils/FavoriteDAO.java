package com.asm.utils;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;

import com.asm.bean.Favorite;
import com.asm.bean.Report2;
import com.asm.bean.User;
import com.asm.bean.Video;


public class FavoriteDAO {
	EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();// Ä�Ã³ng EntityManager khi DAO bá»‹ giáº£i phÃ³ng
		super.finalize();
	}

	// thÃªm user má»›i vÃ o csdl
	public Favorite Like(Favorite entity) {
		try {
			em.getTransaction().begin();// Báº¯t Ä‘áº§u Transaction
			em.persist(entity);// Insert entity vÃ o CSDL
			em.getTransaction().commit();// Cháº¥p nháº­n káº¿t quáº£ thao tÃ¡c
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();// Há»§y thao tÃ¡c
			throw new RuntimeException(e);
		}
	}

	// Cáº­p nháº­t user
	public Favorite update(Favorite entity) {
		try {
			em.getTransaction().begin();// Báº¯t Ä‘áº§u Transaction
			em.merge(entity);// Insert entity vÃ o CSDL
			em.getTransaction().commit();// Cháº¥p nháº­n káº¿t quáº£ thao tÃ¡c
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();// Há»§y thao tÃ¡c
			throw new RuntimeException(e);
		}
	}

	// tÃ¬m kiáº¿m user theo id
	public Favorite findByID(String id) {
		Favorite entity = em.find(Favorite.class, id);
		return entity;
	}

	// xÃ³a user theo id
	public Favorite remove(Favorite entity) {
		try {
			em.getTransaction().begin();// Báº¯t Ä‘áº§u Transaction
			em.remove(entity);// Insert entity vÃ o CSDL
			em.getTransaction().commit();// Cháº¥p nháº­n káº¿t quáº£ thao tÃ¡c
			return entity;
		} catch (Exception e) {
			em.getTransaction().rollback();// Há»§y thao tÃ¡c
			throw new RuntimeException(e);
		}
	}

	public List<Favorite> findAll() {
		String jpql = "select o from Favorite o"; // cÃ¢u lá»‡nh truy váº¥n jpql
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class); // táº¡o Ä‘á»‘i tÆ°á»£ng truy váº¥n
		List<Favorite> list = query.getResultList();// Truy váº¥n
		return list;// tráº£ vá»� list kq
	}

	public List findUserLikeByVideo(String title) {
		try {
			EntityManager em = JpaUtils.getEntityManager();
			StoredProcedureQuery query = em.createNamedStoredProcedureQuery("User.sp_FindUserLikeByVideo");
			query.setParameter("Title", title);
			return query.getResultList();
		} catch (Exception e) {
			em.getTransaction().rollback();// HÃ¡Â»Â§y thao tÃƒÂ¡c
			throw new RuntimeException(e);
		}
	}
	public List findListLike(String id) {
		try {
			EntityManager em = JpaUtils.getEntityManager();
			TypedQuery<Video> query = em.createNamedQuery("Video.findByUser",Video.class);
			query.setParameter("id", id);
			List<Video> listVideos = query.getResultList();
			return listVideos;
		} catch (Exception e) {
			em.getTransaction().rollback();// HÃ¡Â»Â§y thao tÃƒÂ¡c
			throw new RuntimeException(e);
		}
	}
	public Favorite findRemoFavorite(String userId, String videoId) {
		try {
			String jpql = "select o from Favorite o where o.user.id =:uid and o.video.id =:vid "; 
			TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class); 
			query.setParameter("uid", userId);
			query.setParameter("vid", videoId);
			Favorite list=query.getSingleResult();
			return list;// tráº£ vá»� list kq
		} catch (Exception e) {
			em.getTransaction().rollback();// HÃ¡Â»Â§y thao tÃƒÂ¡c
			throw new RuntimeException(e);
		}
	}
	
	public List<Report2> thongke2(String input){
		String sqlString="SELECT new Report2(f.user.id, f.user.fullname, f.user.email, f.likeDate) from Favorite f where f.video.title=:vtitle";
		TypedQuery<Report2> query = em.createQuery(sqlString,Report2.class); 
		query.setParameter("vtitle", input);
		List<Report2> list=query.getResultList();
		return list;
	}
}
