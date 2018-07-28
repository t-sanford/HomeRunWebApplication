package com.tylersanford;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.tylersanford.model.Player;
import com.tylersanford.model.PlayerDAO;
import com.tylersanford.model.Team;
import com.tylersanford.model.TeamDAO;

@Controller 
public class HomeRunController {
	
	@Autowired
	private TeamDAO teamDao;
	@Autowired
	private PlayerDAO playerDao;

	@RequestMapping(path="/", method=RequestMethod.GET)
	public String displayHome(ModelMap modelHolder) {
		List<Team> teams = teamDao.getTeams();
		List<Player> players = playerDao.getPlayers();
		modelHolder.put("teams", teams);
		modelHolder.put("players", players);
		modelHolder.put("leaders", getTeamInLead(teams, players));
		return "MainView";
	}
	
	private List<Team> getTeamInLead(List<Team> teams, List<Player> players) {
		List<Team> leader = new ArrayList<>();
		leader.add(teams.get(0));
		for(Team team : teams) {
			int teamTotal = 0;
			for(Player player : players) {
				if(player.getTeamId() == team.getTeamId()) {
					teamTotal = teamTotal + Integer.parseInt(player.getHomeRuns());
				}
			}
			team.setTeamHomeRuns(teamTotal);
			if(team.getTeamHomeRuns() > leader.get(0).getTeamHomeRuns()) {
				leader.remove(0);
				leader.add(team);
			}
			if((team.getTeamHomeRuns() == leader.get(0).getTeamHomeRuns()) && !(leader.get(0).getTeamId() == team.getTeamId())) {
				leader.add(team);
			}
		}
		return leader;
	}
}