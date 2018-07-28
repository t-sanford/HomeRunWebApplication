<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle" value="HomeRun2018" />
<%@include file="common/header.jspf"%>

<div class="leaderTable">	
	<table>
		<tr>
			<th><strong><c:out value="Leader(s)" /></strong></th>
		</tr>
		<tr>
			<th><strong><c:out value="Team" /></strong></th>
			<th><strong><c:out value="Team Home Runs" /></strong></th>
		</tr>
		<tr>
			<c:forEach var="leader" items="${leaders}">
				<td><c:out value="${leader.teamOwner}" /></td>
				<td><c:out value="${leader.teamHomeRuns}" /></td>
			</c:forEach>
		</tr>
	</table>
</div>

<div class="teamTables">
<c:forEach var="team" items="${teams}">
	<div class="teamTable">
		<table>
			<tr>
				<th><c:out value="${team.teamOwner}" /></th>
			</tr>
			<c:forEach var="player" items="${players}">
				<c:if test="${team.teamId == player.teamId}">
					<tr>
						<td><c:out value="${player.firstName} ${player.lastName}" /></td>
						<td><c:out value="${player.homeRuns}" /></td>
					</tr>
				</c:if>
			</c:forEach>
			<tr>
				<td><strong><c:out value="Team Total" /></strong></td>
				<td><c:out value="${team.teamHomeRuns}" /></td>
			</tr>
		</table>
	</div>
</c:forEach>
</div>

<%@include file="common/footer.jspf"%>