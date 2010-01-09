<%@ page import="nl.gridshore.scheduling.MeetingNotes" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="${message(code: 'meetingNotes.label', default: 'MeetingNotes')}"/>
  <title><g:message code="default.edit.label" args="[entityName]"/></title>
  <gui:resources components="richEditor"/>
</head>
<body>
<div class="body">
  <h1><g:message code="default.edit.label" args="[entityName]"/></h1>
  <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
  </g:if>
  <g:hasErrors bean="${meetingNotesInstance}">
    <div class="errors">
      <g:renderErrors bean="${meetingNotesInstance}" as="list"/>
    </div>
  </g:hasErrors>
  <g:form method="post">
    <g:hiddenField name="id" value="${meetingNotesInstance?.id}"/>
    <g:hiddenField name="version" value="${meetingNotesInstance?.version}"/>
    <div class="dialog">
      <table>
        <tbody>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="weekNr"><g:message code="meetingNotes.weekNr.label" default="Week Nr"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: meetingNotesInstance, field: 'weekNr', 'errors')}">
            <g:textField name="weekNr" value="${fieldValue(bean: meetingNotesInstance, field: 'weekNr')}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="user"><g:message code="meetingNotes.user.label" default="User"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: meetingNotesInstance, field: 'user', 'errors')}">
            <g:select name="user.id" from="${nl.gridshore.scheduling.User.list()}" optionKey="id" value="${meetingNotesInstance?.user?.id}"/>
          </td>
        </tr>

        <tr class="prop">
          <td valign="top" class="name">
            <label for="notes"><g:message code="meetingNotes.notes.label" default="Notes"/></label>
          </td>
          <td valign="top" class="value ${hasErrors(bean: meetingNotesInstance, field: 'notes', 'errors')}">
            %{--<g:textArea name="notes" cols="40" rows="5" value="${meetingNotesInstance?.notes}" />--}%
            <gui:richEditor id='notes' value='${meetingNotesInstance?.notes}'/>
          </td>
        </tr>

        </tbody>
      </table>
    </div>
    <div class="buttons">
      <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}"/></span>
      <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/></span>
    </div>
  </g:form>
</div>
</body>
</html>
