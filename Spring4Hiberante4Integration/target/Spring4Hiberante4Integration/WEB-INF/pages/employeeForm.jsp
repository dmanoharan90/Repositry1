<%--
  User: Ranga Reddy
  Date: 1/27/2015
  Time: 9:48 PM
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Ranga Reddy">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Employee Information</title>
    <!-- Bootstrap CSS -->
    <%-- <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet"> --%>    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
        .myrow-container{
            margin: 20px;
        }
    </style>
</head>
<body class=".container-fluid">
    <div class="container myrow-container">
        <div class="panel panel-success">
            <div class="panel-heading">
                <h3 class="panel-title">
                    Employee Details
                </h3>
            </div>
            <div class="panel-body">
                <form:form id="employeeRegisterForm" cssClass="form-horizontal" modelAttribute="employee" method="post" action="saveEmployee">
    
                    <div class="form-group">
                        <div class="control-label col-xs-3"> <form:label path="name" >Name</form:label> </div>
                        <div class="col-xs-6">
                            <form:hidden path="id" value="${employeeObject.id}"/>
                            <form:input cssClass="form-control" path="name" value="${employeeObject.name}"/>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <form:label path="dept" cssClass="control-label col-xs-3">Dept</form:label>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="dept" value="${employeeObject.dept}"/>
                        </div>
                    </div>
                      <div class="form-group">
                        <form:label path="clgname" cssClass="control-label col-xs-3">College Name</form:label>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="clgname" value="${employeeObject.clgname}"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <form:label path="projectname" cssClass="control-label col-xs-3">Project Name</form:label>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="projectname" value="${employeeObject.projectname}"/>
                        </div>
                    </div>
    
    
    			  <div class="form-group">
                        <form:label path="email" cssClass="control-label col-xs-3">Email Id</form:label>
                        <div class="col-xs-6">
                            <form:input cssClass="form-control" path="email" value="${employeeObject.email}"/>
                        </div>
                    </div>
                    
    
                    
               
                    <div class="form-group">
                        <div class="row">
                            <div class="col-xs-4">
                            </div>
                            <div class="col-xs-4">
                                <input type="submit" id="saveEmployee" class="btn btn-primary" value="Save" onclick="return submitEmployeeForm();"/>
                            </div>
                            <div class="col-xs-4">
                            </div>
                        </div>
                    </div>
    
                </form:form>
            </div>
        </div>
    </div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
		function submitEmployeeForm() {				
			
		    // getting the employee form values
		    var name = $('#name').val().trim();
		    var dept = $('#dept').val().trim();
		    var clgname = $('#clgname').val().trim();
		    var projectname = $('#projectname').val().trim();
		    var email=$('#email').val().trim();
		    
		    
		    if(name.length ==0) {
		        alert('Please enter name');
		        $('#name').focus();
		        return false;
		    }
	
		    if(dept.length ==0) {
		        alert('Please enter dept');
		        $('#dept').focus();
		        return false;
		    }
		    
		    if(clgname.length ==0) {
		        alert('Please enter college name');
		        $('#clgname').focus();
		        return false;
		    }
		    
		    if(project.length ==0) {
		        alert('Please enter project name');
		        $('#projectname').focus();
		        return false;
		    }
		    
		    if(email.length ==0) {
		        alert('Please enter E mail Id');
		        $('#email').focus();
		        return false;
		    }
		    
		
		    
		 
		    return true;
		};	
	</script>

</body>
</html>