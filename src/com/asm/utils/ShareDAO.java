package com.asm.utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;

public class ShareDAO {
	EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		em.close();
		super.finalize();
	}

	public void SenMaid(String to, String subject, String body) {
		try {
			Properties p = new Properties();
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.port", 587);
			Session s = Session.getInstance(p, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					String username = "doanhuynhlongngan161200@gmail.com";
					String password = "longngan161200";
					return new PasswordAuthentication(username, password);
				}
			});
			MimeMessage msg = new MimeMessage(s);
			msg.setFrom(new InternetAddress("doanhuynhlongngan161200@gmail.com"));
			msg.setRecipients(Message.RecipientType.TO, to);
			msg.setSubject(subject, "utf-8");
			msg.setText(body, "utf-8", "html");
			msg.setReplyTo(msg.getFrom());
			Transport.send(msg);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
}
