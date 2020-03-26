package pl.jaceksysiak;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class StudentDao {
	
	public static int register(Student student) {
		int i=0;
		Session session=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
		Transaction transaction =session.beginTransaction();
		i=(int)session.save(student);
		transaction.commit();
		return i;
	}

}




























