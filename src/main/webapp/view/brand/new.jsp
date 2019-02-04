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
			    <div class="row">
			      <div class="col-md-6 grid-margin stretch-card">
			        <div class="card">
			          <div class="card-body">
			            <h4 class="card-title">Marca</h4>
			            <p class="card-description">
			              Cadastro Nova Marca
			            </p>
			            <form id="brandForm" class="forms-sample" method="post" action="addBrand">
			              <div class="form-group">
			                <label for="exampleInputUsername1">Nome</label>
			                <input type="text" class="form-control" id="name" name="name" placeholder="Nome da Marca">
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

