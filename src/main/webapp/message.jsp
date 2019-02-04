<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<c:if test="${not empty message}">
	<div class="alert alert-fill-success" role="alert">
		<i class="mdi mdi-alert-circle"></i>
		${message}
	</div>
</c:if>


<c:if test="${not empty error}">
	<div role="alert" class="alert alert-fill-danger">
		<i class="mdi mdi-alert-circle"></i>
		${error}
	</div>
</c:if>

