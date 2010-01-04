<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head>
    <title>Contact page</title>
    <meta name="layout" content="main"/>
    <style>
      label {
        display : block;
      }
    </style>
    
  </head>
  <body>
  <p>You can send a mail using the contact form.</p>
  <div class="yui-skin-sam">
  <g:form action="mail" method="POST">
    <div>
      <label>Name : </label><g:textField id="yourname" name="yourname"/>
    </div>
    <div>
      <label>Email : </label><g:textField id="yourmail" name="yourmail"/>
    </div>
    <div>
      <label>Remark : </label><g:textArea id="remark" name="remark" cols="50" rows="10"/>
    </div>
    <div>
      <g:submitButton name="Send"/>
    </div>
  </g:form>

  </body>
</html>