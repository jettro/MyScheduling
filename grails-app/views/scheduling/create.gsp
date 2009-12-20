<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Create schedule item</title>
  <meta name="layout" content="main"/>
  <gui:resources components="autoComplete,datePicker"/>
</head>
<body>
<g:form action="newScheduleItem" method="POST">
  <div style="width:300px">
    Person : <span class="yui-skin-sam"><gui:autoComplete id="person" options="${persons*.name}"/></span>
    Project : <span class="yui-skin-sam"><gui:autoComplete id="project" options="${projects*.name}"/></span>
  </div>

  <div style="width:300px">
    Number of hours : <br/><g:textField id="nrhours" name="nrhours"/><br/>
    Week number : <br/><g:textField id="weeknr" name="weeknr"/><br/>
  </div>

  <div class="yui-skin-sam">
    <gui:datePicker id="startDate" formatString="yyyy-MM-dd"/>
    <gui:datePicker id="endDate" formatString="yyyy-MM-dd"/>
  </div>
  <g:submitButton name="Create"/>
</g:form>
</body>
</html>