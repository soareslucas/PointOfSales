<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>

<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ponto de Vendas</title>
  
  <%@ include file="../../basicCSS.jsp" %>
 
  <link rel="shortcut icon" href="view/static/images/logo-mini.png" />
 
</head>
<body class="sidebar-mini">
	<div class="container-scroller">
    
		<%@ include file="../../topMenu.jsp" %>
   
		<div class="container-fluid page-body-wrapper">
		    
	    	<%@ include file="../../sideMenu.jsp" %>
		
			<div class="main-panel">        
			  <div class="content-wrapper">
			  
			  
   			    <%@ include file="../../message.jsp" %>	    
			  
			    <div class="row">
			      <div class="col-12 grid-margin stretch-card">
			        <div class="card">
			          <div class="card-body">

						<nav aria-label="breadcrumb">
	                      <ol class="breadcrumb breadcrumb-custom">
	                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
	                        <li class="breadcrumb-item"><a href="brandList">Lista de Marcas</a></li>
	                        <li aria-current="page" class="breadcrumb-item active"><span>Cadastro de Marcas</span></li>
	                      </ol>
	                    </nav>
	                    
	                    
			            <form id="brandForm" class="forms-sample" method="post" action="${not empty action ? action : 'addBrand'}">
			              <div class="form-group">
			                <label for="exampleInputUsername1">Nome</label>
			                
			                
			                
			                <c:choose>
								<c:when test="${not empty brand.name}">
			                		<input type="text" value="${brand.name}" class="form-control" id="name" name="name" placeholder="Nome da Marca">
								</c:when>
								<c:otherwise>
			                		<input type="text" class="form-control" id="name" name="name" placeholder="Nome da Marca">
								</c:otherwise>
							</c:choose>
			                
			                
			              </div>
			 
			              <button type="submit" class="btn btn-primary mr-2">Cadastrar</button>
			              <button onclick="$('#brandForm').trigger('reset')" class="btn btn-light">Limpar</button>
			             </form>
			           </div>
			         </div>
			       </div>
			      </div>
			     </div>
			</div>


			
		    
		</div>
	</div>

	<%@ include file="../../basicJS.jsp" %>
  
</body>

</html>

