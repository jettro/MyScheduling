<%@ page import="nl.gridshore.scheduling.MeetingNotes" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="${message(code: 'meetingNotes.label', default: 'MeetingNotes')}"/>
  <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>
<body>
<div class="body">
  <h1><g:message code="default.show.label" args="[entityName]"/></h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <div class="dialog">
    <table>
      <tbody>

      <tr class="prop">
        <td valign="top" class="name"><g:message code="meetingNotes.id.label" default="Id"/></td>

        <td valign="top" class="value">${fieldValue(bean: meetingNotesInstance, field: "id")}</td>

      </tr>

      <tr class="prop">
        <td valign="top" class="name"><g:message code="meetingNotes.notes.label" default="Notes"/></td>

        <td valign="top" class="value">${fieldValue(bean: meetingNotesInstance, field: "notes")}</td>

      </tr>

      <tr class="prop">
        <td valign="top" class="name"><g:message code="meetingNotes.weekNr.label" default="Week Nr"/></td>

        <td valign="top" class="value">${fieldValue(bean: meetingNotesInstance, field: "weekNr")}</td>

      </tr>

      <tr class="prop">
        <td valign="top" class="name"><g:message code="meetingNotes.user.label" default="User"/></td>

        <td valign="top" class="value"><g:link controller="user" action="show" id="${meetingNotesInstance?.user?.id}">${meetingNotesInstance?.user?.encodeAsHTML()}</g:link></td>

      </tr>

      </tbody>
    </table>
  </div>
  <div class="buttons">
    <g:form>
      <g:hiddenField name="id" value="${meetingNotesInstance?.id}"/>
      <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}"/></span>
      <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/></span>
    </g:form>
  </div>
</div>
</body>
</html>
