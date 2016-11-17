package com.niit.dao;

import java.util.List;

import com.niit.model.Job;

public interface JobDao {

	public void saveOrUpdateJob(Job job);

	public Job getJobById(String jobId);

	public List<Job> getAllJobs();

	public boolean delete(Job job);
}