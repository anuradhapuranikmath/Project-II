package com.niit.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.Job;
import java.util.List;

import javax.transaction.Transactional;

@Repository("jobDao")
@Transactional
public class JobDaoImpl implements JobDao {

	@Autowired
	private SessionFactory sessionFactory;

	public JobDaoImpl() {
		super();
	}

	public JobDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public void saveOrUpdateJob(Job job) {

		Session session = sessionFactory.openSession();
		try {
			session.saveOrUpdate(job);
			session.flush();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	@Transactional
	public Job getJobById(String jobId) {
		Session session = sessionFactory.openSession();
		return (Job) session.get(Job.class, jobId);
	}

	public boolean delete(Job job) {
		// TODO Auto-generated method stub
		try {
			Session session = sessionFactory.openSession();
			session.delete(job);
			session.flush();
			
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

	public List<Job> getAllJobs() {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from Job");
		List<Job> jobs = query.list();
		return jobs;
	}
	
}