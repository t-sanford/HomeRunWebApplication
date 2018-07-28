package com.tylersanford.model;

public class Player {
	private int playerId;
	private String firstName;
	private String lastName;
	private String playerNum;
	private String homeRuns;
	private int teamId;
	
	public Player() {
	}

	public int getPlayerId() {
		return playerId;
	}

	public void setPlayerId(int playerId) {
		this.playerId = playerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPlayerNum() {
		return playerNum;
	}

	public void setPlayerNum(String playerNum) {
		this.playerNum = playerNum;
	}

	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}
	
	public String getHomeRuns() {
		return homeRuns;
	}

	public void setHomeRuns(String homeRuns) {
		this.homeRuns = homeRuns;
	}
}