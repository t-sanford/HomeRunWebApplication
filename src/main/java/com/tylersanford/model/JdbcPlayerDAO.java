package com.tylersanford.model;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcPlayerDAO implements PlayerDAO {

	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JdbcPlayerDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	@Override
	public List<Player> getPlayers() {
		List<Player> players = new ArrayList<>();
		String sqlGetPlayers = "SELECT player_id, first_name, last_name, urlnum, player.team_id " + 
							 "FROM player;";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetPlayers);
		while(results.next()) {
    	 		players.add(mapRowToPlayer(results));
     }
     return players;
	}
	
	private Player mapRowToPlayer(SqlRowSet results) {
		Player temp = new Player();
		String tempHomers;
		temp.setPlayerId(results.getInt("player_id"));
		temp.setFirstName(results.getString("first_name"));
		temp.setLastName(results.getString("last_name"));
		temp.setPlayerNum(Integer.toString(results.getInt("urlnum")));
		temp.setTeamId(results.getInt("team_id"));
		tempHomers = scrapeHomeRuns(temp);
		temp.setHomeRuns(tempHomers);
		return temp;
	}
	
	public String scrapeHomeRuns(Player player) {
		String homeRuns;
		try {
			Document doc = Jsoup.connect("http://m.mlb.com/player/" + player.getPlayerNum() + "/").get();
			homeRuns = doc.select(".player-stats-summary-large").select("td").get(4).ownText();
			return homeRuns;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
}
