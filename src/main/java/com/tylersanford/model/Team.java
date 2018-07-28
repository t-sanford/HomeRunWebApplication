package com.tylersanford.model;

public class Team {
	private int teamId;
	private String teamOwner;
	private int teamHomeRuns;
	
	public int getTeamId() {
		return teamId;
	}
	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}
	public String getTeamOwner() {
		return teamOwner;
	}
	public void setTeamOwner(String teamOwner) {
		this.teamOwner = teamOwner;
	}
	public int getTeamHomeRuns() {
		return teamHomeRuns;
	}
	public void setTeamHomeRuns(int teamHomeRuns) {
		this.teamHomeRuns = teamHomeRuns;
	}
}
