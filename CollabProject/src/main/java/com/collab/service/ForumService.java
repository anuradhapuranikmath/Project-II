package com.collab.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.collab.dao.ForumDAO;
import com.collab.model.Forum;

@Service
public class ForumService {
	@Autowired
	private ForumDAO forumDAO;

	public void setForumDAO(ForumDAO u) {
		this.forumDAO = u;
	}

	@Transactional
	public void addForum(Forum f) {
		forumDAO.addForum(f);
	}

	
	@Transactional
	public List<Forum> listForums() {
		return forumDAO.listForums();
	}
}