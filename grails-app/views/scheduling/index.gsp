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
          id="scheduleItemDatatable"
          draggableColumns="true"
          columnDefs="[
            [key:'id', sortable:true, resizeable: true, label:'ID'],
            [key:'person', sortable:true, resizeable: true, label:'Person'],
            [key:'project', sortable:true, resizeable: true, label: 'Project'],
            [key:'weekNr', type:'number', sortable:true, resizeable: true, label: 'Week Nr'],
            [key:'nrHours', type:'number', sortable:true, resizeable: true, label: 'Nr Hours']
          ]"
          paginatorConfig="[
            template:'{PreviousPageLink} {PageLinks} {NextPageLink} {CurrentPageReport}',
            pageReportTemplate:'{totalRecords} total records'
          ]"
          controller="scheduling"
          action="scheduleItemDataAsJSON"
          resultsList="results"
          rowExpansion="false"
          rowsPerPage="15"/>
</div>
</body>
</html>
