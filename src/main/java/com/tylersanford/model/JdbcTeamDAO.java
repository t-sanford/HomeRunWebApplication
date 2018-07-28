package com.tylersanford.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcTeamDAO implements TeamDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcTeamDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Team> getTeams() {
		List<Team> teams = new ArrayList<>();
		String sqlGetTeams = "SELECT * " + 
							 "FROM team;";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetTeams);
		while(results.next()) {
    	 		teams.add(mapRowToTeam(results));
     }
     return teams;
	}
	
	private Team mapRowToTeam(SqlRowSet results) {
		Team temp = new Team();
		temp.setTeamId(results.getInt("team_id"));
		temp.setTeamOwner(results.getString("team_owner"));
		return temp;
	}
}