package org.khmeracademy.app.entities.input;

public class FrmUpdateTutorial {
	
	private String tutorialId;
	private String title;
	private String description;
	private int index;
	private String userId;
	private String categoryId;
	
	public String getTutorialId() {
		return tutorialId;
	}
	public void setTutorialId(String tutorialId) {
		this.tutorialId = tutorialId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	

	
}
