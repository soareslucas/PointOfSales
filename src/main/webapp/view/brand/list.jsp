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
			      <div class="card">
			        <div class="card-body">
			        
			          
			          
			          <div class="row">
			          		<div class=" form-group col-10"> 
			          			<h4 class="card-title">Lista de Marcas</h4>
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
			                        <td>${brand.id}</td>
			                        <td>${brand.name}</td>
			                        <td>

			                          <button class="btn btn-outline-primary">Editar
			                          	<i class="mdi mdi-file-check btn-icon-append"></i>
			                          </button>
			                          
			                          <button class="btn btn-outline-primary">Excluir</button>
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

