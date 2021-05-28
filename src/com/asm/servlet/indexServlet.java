package com.asm.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspApplicationContext;

import org.apache.commons.beanutils.BeanUtils;

import com.asm.bean.Favorite;
import com.asm.bean.Report;
import com.asm.bean.Report2;
import com.asm.bean.User;
import com.asm.bean.Video;
import com.asm.utils.FavoriteDAO;
import com.asm.utils.ShareDAO;
import com.asm.utils.UserDAO;
import com.asm.utils.VideoDAO;

import javassist.compiler.ast.NewExpr;

@WebServlet({ "/index", "/dangky", "/login", "/sign-out", "/edit-profile", "/about", "/contact", "/genre",
		"/watch-movie/*", "/like", "/list", "/unlike", "/share", "/admin-home", "/admin-video", "/admin-user",
		"/admin-favorites", "/user-create", "/user-update", "/user-delete", "/user-edit/*", "/user-editProfile",
		"/video-create", "/video-update", "/video-delete", "/video-edit/*", "/search-video", "/search-user",
		"/favorites-thongke1","/favorites-thongke2","/forgotPW" })
public class indexServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String uri = req.getRequestURI();
		if (uri.contains("index")) {
			selectMovie(req, resp);
			req.getRequestDispatcher("/views/ASM/index.jsp").forward(req, resp);
		} else if (uri.contains("about")) {
			req.getRequestDispatcher("/views/ASM/about.jsp").forward(req, resp);
		} else if (uri.contains("list")) {
			this.selectVideoLike(req, resp);
		} else if (uri.contains("contact")) {
			req.getRequestDispatcher("/views/ASM/contact.jsp").forward(req, resp);
		} else if (uri.contains("dangky")) {
			doSignUp(req, resp);
		} else if (uri.contains("login")) {
			doSignIn(req, resp);
		} else if (uri.contains("genre")) {
			req.getRequestDispatcher("/views/ASM/genre.jsp").forward(req, resp);
		} else if (uri.contains("unlike")) {
			this.unLike(req, resp);
		} else if (uri.contains("like")) {
			this.likeMovie(req, resp);

		} else if (uri.contains("share")) {
			this.SendMail(req, resp);
		} else if (uri.contains("watch-movie")) {

			VideoDAO dao = new VideoDAO();

			String id = uri.substring(uri.lastIndexOf("/") + 1);
			Video video = dao.findById(id);
			
			Video entity=new Video();
			entity.setId(video.getId());
			entity.setTitle(video.getTitle());
			entity.setDescription(video.getDescription());
			entity.setViews(video.getViews()+1);
			entity.setPoster(video.getPoster());
			entity.setUrlVideo(video.getUrlVideo());
			entity.setActive(video.getActive());
			dao.update(entity);
			
			req.setAttribute("video", video);
			req.getRequestDispatcher("/views/ASM/playMovie.jsp").forward(req, resp);
		} else if (uri.contains("sign-out")) {
			req.getSession().setAttribute("user", null);
			req.getRequestDispatcher("index").forward(req, resp);

		} else if (uri.contains("admin-home")) {

			req.getRequestDispatcher("/views/ASM/admin-home.jsp").forward(req, resp);

		} else if (uri.contains("admin-user")) {
			UserDAO dao = new UserDAO();
			req.setAttribute("items", dao.findAll());
			req.getRequestDispatcher("/views/ASM/admin-user.jsp").forward(req, resp);
		} else if (uri.contains("admin-video")) {
			VideoDAO dao = new VideoDAO();
			req.setAttribute("videos", dao.findAll());
			req.getRequestDispatcher("/views/ASM/admin-video.jsp").forward(req, resp);
		} else if (uri.contains("admin-favorites")) {
			req.getRequestDispatcher("/views/ASM/admin-favorites.jsp").forward(req, resp);
		} else if (uri.contains("user-create")) {
			try {
				UserDAO dao = new UserDAO();
				User users = new User();
				BeanUtils.populate(users, req.getParameterMap());
				dao.create(users);
				req.setAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Thêm mới thất bại");
			}
			req.getRequestDispatcher("admin-user").forward(req, resp);
		} else if (uri.contains("user-update")) {
			try {
				UserDAO dao = new UserDAO();
				User users = new User();
				BeanUtils.populate(users, req.getParameterMap());
				dao.update(users);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại");

			}
			req.getRequestDispatcher("admin-user").forward(req, resp);
		} else if (uri.contains("user-delete")) {
			UserDAO dao = new UserDAO();
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Xóa thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Xóa thất bại");
			}
			req.getRequestDispatcher("admin-user").forward(req, resp);
		} 
		else if (uri.contains("user-edit")) {
			UserDAO dao = new UserDAO();
			User users = new User();
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			users = dao.findById(id);
			req.setAttribute("form", users);
			req.getRequestDispatcher("admin-user").forward(req, resp);
		}
		else if (uri.contains("video-create")) {
			try {
				VideoDAO dao = new VideoDAO();
				Video videos = new Video();
				BeanUtils.populate(videos, req.getParameterMap());
				dao.create(videos);
				req.setAttribute("message", "Thêm mới thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Thêm mới thất bại");
			}
			req.getRequestDispatcher("admin-video").forward(req, resp);
		} else if (uri.contains("video-update")) {
			try {
				VideoDAO dao = new VideoDAO();
				Video videos = new Video();
				BeanUtils.populate(videos, req.getParameterMap());
				dao.update(videos);
				req.setAttribute("message", "Cập nhật thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại");

			}
			req.getRequestDispatcher("admin-video").forward(req, resp);
		} else if (uri.contains("video-delete")) {
			VideoDAO dao = new VideoDAO();
			try {
				String id = req.getParameter("id");
				dao.remove(id);
				req.setAttribute("message", "Xóa thành công");
			} catch (Exception e) {
				req.setAttribute("message", "Xóa thất bại");
			}
			req.getRequestDispatcher("admin-video").forward(req, resp);
		} else if (uri.contains("video-edit")) {
			VideoDAO dao = new VideoDAO();
			Video videos = new Video();
			String id = uri.substring(uri.lastIndexOf("/") + 1);
			videos = dao.findById(id);

			req.setAttribute("form", videos);
			req.getRequestDispatcher("admin-video").forward(req, resp);
		} else if (uri.contains("search-video")) {
			String titleString = req.getParameter("title");
			VideoDAO dao = new VideoDAO();
			List<Video> list = dao.findkeyword(titleString);
			req.setAttribute("videos", list);
			req.getRequestDispatcher("/views/ASM/admin-video.jsp").forward(req, resp);
		} else if (uri.contains("search-user")) {
			String fullname = req.getParameter("fullname");
			UserDAO dao = new UserDAO();
			List<User> list = dao.findByFullname(fullname);
			req.setAttribute("items", list);
			req.getRequestDispatcher("/views/ASM/admin-user.jsp").forward(req, resp);
		 }else if(uri.contains("admin-favorites"))
		 {
			 req.getRequestDispatcher("/views/ASM/admin-favorites.jsp").forward(req, resp);
		 }else if(uri.contains("favorites-thongke1"))
		 {
			 VideoDAO videoDAO=new VideoDAO();
			 List<Report> list1=videoDAO.toTals();
			 List<Video> titleList=videoDAO.findAll();
			 req.setAttribute("list1", list1);
			 req.setAttribute("titleList", titleList);
			 req.getRequestDispatcher("/views/ASM/admin-favorites.jsp").forward(req, resp);
		 }else if(uri.contains("favorites-thongke2"))
		 {
			 VideoDAO videoDAO=new VideoDAO();
			 FavoriteDAO favoriteDAO=new FavoriteDAO();
			 List<Report> list1=videoDAO.toTals();
			 List<Video> titleList=videoDAO.findAll();
			 String titleString=req.getParameter("chon");
			 System.out.println(titleString);
			 List<Report2> list2=favoriteDAO.thongke2(titleString);
			 req.setAttribute("list1", list1);
			 req.setAttribute("titleList", titleList);
			 req.setAttribute("list2", list2);
			 req.getRequestDispatcher("/views/ASM/admin-favorites.jsp").forward(req, resp);
		 }else if(uri.contains("forgotPW")) {
			 this.FGPW(req, resp);
		 }else if(uri.contains("edit-profile")) {
			 this.doEditProfile(req, resp);
		 }
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

	private void selectMovie(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Video> videosList = new ArrayList<Video>();
		VideoDAO dao = new VideoDAO();
		videosList = dao.findAll();
		req.setAttribute("form", videosList);

	}

	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			String id = req.getParameter("username");
			String pw = req.getParameter("password");
			// TODO: ĐĂNG NHẬP
			try {
				UserDAO dao = new UserDAO();
				User user = dao.findById(id);
				if (!user.getPassword().equals(pw)) {
					req.setAttribute("message", "Sai mật khẩu!");
				} else {
					req.setAttribute("message", "Đăng nhập thành công!");
					req.getSession().setAttribute("user", user);
					// req.getRequestDispatcher("login").forward(req, resp);
				}
			} catch (Exception e) {
				req.setAttribute("message", "Sai tên đăng nhập!");
				System.out.println(e);
			}
		}
		req.getRequestDispatcher("/views/ASM/login.jsp").forward(req, resp);

	}

	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			// TODO: ĐĂNG KÝ
			try {
				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());
				UserDAO dao = new UserDAO();
				dao.create(entity);
				req.setAttribute("message", "Đăng ký thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Lỗi đăng ký!");
			}
		}
		req.getRequestDispatcher("/views/ASM/dangky.jsp").forward(req, resp);

	}

	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			try {
				User user=new User();
				BeanUtils.populate(user, req.getParameterMap());
				UserDAO dao = new UserDAO();
				dao.update(user);
				req.setAttribute("message", "Cập nhật tài khoản thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Lỗi cập nhật tài khoản!");
			}
			req.getRequestDispatcher("/views/ASM/edit-profile.jsp").forward(req, resp);
	}

	private void likeMovie(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		FavoriteDAO fvDao = new FavoriteDAO();
		List<Favorite> list = fvDao.findAll();

		UserDAO userDAO = new UserDAO();
		VideoDAO vDao = new VideoDAO();
		Favorite fvFavorite = new Favorite();

		String idVideo = req.getParameter("idVideo");

		String idUser = req.getParameter("idUser");
		User user = userDAO.findById(idUser);

		Video video = vDao.findById(idVideo);

		fvFavorite.setUser(user);
		fvFavorite.setVideo(video);
		fvFavorite.setLikeDate(new Date());

		fvDao.Like(fvFavorite);
		req.getRequestDispatcher("index").forward(req, resp);
	}

	private void selectVideoLike(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String userID = req.getParameter("userID");
		FavoriteDAO Fav = new FavoriteDAO();
		List<Video> list = Fav.findListLike(userID);
		req.setAttribute("video", list);
		req.getRequestDispatcher("/views/ASM/list.jsp").forward(req, resp);
	}

	private void unLike(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idUser = req.getParameter("idUser");
		String idVideo = req.getParameter("idVideo");

		FavoriteDAO fvDao = new FavoriteDAO();
		Favorite fvFavorite = fvDao.findRemoFavorite(idUser, idVideo);

		fvDao.remove(fvFavorite);
		req.getRequestDispatcher("list").forward(req, resp);
	}

	private void SendMail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String to = req.getParameter("to");
			String subject = req.getParameter("subject");
			String body = req.getParameter("body")+". Xem ngay tại DHLN Entertaiment";
			ShareDAO dao=new ShareDAO();
			dao.SenMaid(to, subject, body);
			req.setAttribute("message", "Send mail successfully!");
		} catch (Exception ex) {
			req.setAttribute("message", "Mail sending failed!");
		}
		req.getRequestDispatcher("contact").forward(req, resp);
	}
	private void FGPW(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String userid=req.getParameter("username");
			UserDAO usDAO=new UserDAO();
			User user=usDAO.findById(userid);
			String to = req.getParameter("to");
			String subject = "DHLN Entertaiment";
			String body = "Mật khẩu của bạn là: "+user.getPassword();
			ShareDAO dao=new ShareDAO();
			dao.SenMaid(to, subject, body);
			req.setAttribute("message", "Password has been sent to your mail!");
		} catch (Exception ex) {
			req.setAttribute("message", "Error when receiving password again!");
		}
		req.getRequestDispatcher("/views/ASM/forgotPW.jsp").forward(req, resp);
	}
}
