<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
	"http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
  <title><g:layoutTitle default="My Scheduling"/></title>
  <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.8.0r4/build/reset-fonts-grids/reset-fonts-grids.css"/>
  <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"/>
  <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon"/>
  <g:layoutHead/>
  <nav:resources/>
  <g:javascript library="application"/>
</head>
<body>
<div id="spinner" class="spinner" style="display:none;">
  <img src="${resource(dir: 'images', file: 'spinner.gif')}" alt="Spinner"/>
</div>
<div id="doc3">
  <div id="hd">
    <div id="sitemenu">
      <nav:render group="sitemenu"/>
    </div>
    <div id="grailsLogo" class="logo"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'logo_myscheduling.png')}" alt="MyScheduling logo" border="0"/></a></div>
    <div id="menu">
      <nav:render group="tabs"/>
      <nav:renderSubItems group="tabs"/>
    </div>
  </div>
  <div id="bd">
    <div class="yui-b">
      <div id="messages">
        <g:if test="${flash.error}">
          <div class="flasherror">${flash.error}</div>
        </g:if>
        <g:if test="${flash.message}">
          <div class="flash">${flash.message}</div>
        </g:if>
      </div>
    </div>
    <div id="yui-main">
      <div class="yui-b">
        <g:layoutBody/>
      </div>
    </div>
  </div>
  <div id="ft">
    Copyright - Disclaimer - Created by - technical contact
  </div>
</div>
</body>
</html>