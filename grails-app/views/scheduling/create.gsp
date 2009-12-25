<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Create schedule item</title>
  <meta name="layout" content="main"/>
  <gui:resources components="autoComplete,datePicker"/>
  <style>
    label {
      display : block;
    }
  </style>
</head>
<body>
<div class="yui-skin-sam">
<g:form action="newScheduleItem" method="POST">
  <div style="width:500px">
    <label>Person : </label><gui:autoComplete id="person" options="${persons*.name}"/>
  </div>
  <div style="width:500px">
    <label>Project : </label><gui:autoComplete id="project" options="${projects*.name}"/>
  </div>
  <div>
    <label>Number of hours : </label><g:textField id="nrhours" name="nrhours"/>
  </div>
  <div>
    <label>Week number : </label><g:textField id="weeknr" name="weeknr"/>
  </div>
  <div>
    <label>Start date : </label><gui:datePicker id="startDate" formatString="yyyy-MM-dd"/>
  </div>
  <style>
    .datefield {
      top:0;
      left:0;
      padding:0;
    }
  </style>
  <div>
    <label>End date : </label><gui:datePicker id="endDate" formatString="yyyy-MM-dd"/>
  </div>
  <div>
    <g:submitButton name="Create"/>
  </div>
</g:form>
</div>
</body>
</html>