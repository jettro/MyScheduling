<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Show all schedule items</title>
  <meta name="layout" content="main"/>
  <gui:resources components="dataTable"/>
</head>
<body>
    <table>
    <g:each in="${scheduleItems}" var="scheduleItem">
        <tr>
            <td>${scheduleItem.project.name}</td>
            <td>${scheduleItem.weekNr}</td>
            <td>${scheduleItem.nrHours}</td>
        </tr>
    </g:each>
    </table>
</body>
</html>
