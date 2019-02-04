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
			    
			      <div class="card">
			        <div class="card-body">
			          <div class="row">
			          		<div class=" form-group col-10"> 
			          		
				          		<nav aria-label="breadcrumb">
			                      <ol class="breadcrumb breadcrumb-custom">
			                        <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
			                        <li aria-current="page" class="breadcrumb-item active"><span>Lista de Marcas</span></li>
			                      </ol>
			                    </nav>

			          		</div>
			          		<div class="form-group col-2"> 
			          					          		
			          			<button onclick="window.location='newBrand'" type='button' class='btn btn-inverse-success'> 
								  	ADICIONAR <i class='mdi mdi-plus'></i>
								</button> 
			          		</div>
			          		
			          </div>
			          
			          <div class="row">
			            <div class="col-12">
			              <div class="table-responsive">						  				              
				                <table id="order-listing" class="table">
				                  <thead>
				                    <tr>
				                        <th>id #</th>
				                        <th>Nome</th>
				                        <th>Ações</th>
				                    </tr>
				                  </thead>
				                  <tbody>
				                  
		  							<c:forEach items="${brands}" var="brand">
		  															
					                    <tr id="brand_${brand.id}">
					                        <td>
					                        	${brand.id}
	                  				                <input type="hidden" class="form-control" id="id" name="id">
					                        </td>
					                        <td>${brand.name}</td>
					                        <td>
		
		
					                          <button onclick="window.location='editBrand?id=${brand.id}'" class="btn btn-outline-primary">Editar
					                          	<i class="fa fa-edit"></i>
					                          </button>
					                          
					                          <button onclick="window.location='deleteBrand?id=${brand.id}'" class="btn btn-outline-primary">Excluir
					                          	<i class="fa  fa-trash-o"></i>
					                          </button>
					                        </td>
					                    </tr>
									</c:forEach>
				                  
				                  
	
				                  </tbody>
				                </table>
			              </div>
			            </div>
			          </div>
			        </div>
			      </div>
			    </div>
			</div>
		</div>
	</div>

	<%@ include file="../../basicJS.jsp" %>
  
	<!-- custom JS -->
	<script src="view/static/js/data-table.js"></script>
  
</body>

</html>

