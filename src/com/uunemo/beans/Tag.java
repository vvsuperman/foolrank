package com.uunemo.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tag")
public class Tag {
	private int tagId;
	private String tagName;
	private int questionId;
	
	@Id
	@GeneratedValue
	@Column(name="tag_id",length=8,unique=true)
	public int getTagId() {
		return tagId;
	}
	
	public void setTagId(int tagId) {
		this.tagId = tagId;
	}
	
	@Column(name="tag_name",length=8,unique=true)
	public String getTagName() {
		return tagName;
	}
	
	public void setTagName(String tagName) {
		this.tagName = tagName;
	}
	
	@Column(name="question_id",length=8)
	public int getQuestionId() {
		return questionId;
	}
	
	public void setQuestionId(int questionId) {
		this.questionId = questionId;
	}
	
	
	

}
