<%@ page import="nl.gridshore.scheduling.MeetingNotes" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="${message(code: 'meetingNotes.label', default: 'MeetingNotes')}"/>
  <title><g:message code="default.list.label" args="[entityName]"/></title>
  <feed:meta kind="rss" version="2.0" controller="meetingNotes" action="feed"/>
</head>
<body>
<div class="body">
  <h1><g:message code="default.list.label" args="[entityName]"/></h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <div class="list">
    <table>
      <thead>
      <tr>

        <g:sortableColumn property="id" title="${message(code: 'meetingNotes.id.label', default: 'Id')}"/>

        <g:sortableColumn property="notes" title="${message(code: 'meetingNotes.notes.label', default: 'Notes')}"/>

        <g:sortableColumn property="weekNr" title="${message(code: 'meetingNotes.weekNr.label', default: 'Week Nr')}"/>

        <th><g:message code="meetingNotes.user.label" default="User"/></th>

      </tr>
      </thead>
      <tbody>
      <g:each in="${meetingNotesInstanceList}" status="i" var="meetingNotesInstance">
        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

          <td><g:link action="show" id="${meetingNotesInstance.id}">${fieldValue(bean: meetingNotesInstance, field: "id")}</g:link></td>

          <td>${fieldValue(bean: meetingNotesInstance, field: "notes")}</td>

          <td>${fieldValue(bean: meetingNotesInstance, field: "weekNr")}</td>

          <td>${fieldValue(bean: meetingNotesInstance, field: "user")}</td>

        </tr>
      </g:each>
      </tbody>
    </table>
  </div>
  <div class="paginateButtons">
    <g:paginate total="${meetingNotesInstanceTotal}"/>
  </div>
</div>
</body>
</html>
