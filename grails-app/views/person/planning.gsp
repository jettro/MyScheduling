<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Show all schedule items</title>
  <meta name="layout" content="main"/>
  <gui:resources components="dataTable"/>
</head>
<body>
<div class="yui-skin-sam">
  <gui:dataTable
          id="personDatatable"
          draggableColumns="true"
          columnDefs="[
            [key:'id', sortable:true, resizeable: true, label:'ID'],
            [key:'name', sortable:true, resizeable: true, label:'Name']
          ]"
          paginatorConfig="[
            template:'{PreviousPageLink} {PageLinks} {NextPageLink} {CurrentPageReport}',
            pageReportTemplate:'{totalRecords} total records'
          ]"
          controller="person"
          action="planningDataAsJSON"
          resultsList="results"
          rowExpansion="false"
          rowsPerPage="15"
          rowClickNavigation="true"/>
</div>
</body>
</html>
