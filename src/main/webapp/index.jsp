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
    <!-- partial:partials/_navbar.html -->
    
    <%@ include file="../../topMenu.jsp" %>
    
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
    
      <%@ include file="../../sideMenu.jsp" %>

      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
          
          
          
            <div class="col-lg-4 grid-margin">

              <div class="card">
                <div class="card-body">
                  <h4 class="card-title">Produtos por categoria</h4>
                  <canvas id="sales-status-chart"></canvas>
                  <div id="sales-status-chart-legend" class="mt-3 chartjs-legend"></div>
                </div>
              </div>

            </div>
            
            
            
            
            <div class="col-lg-8 grid-margin d-flex flex-column">
              <div class="row">
                <div class="col-md-2 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <div class="text-primary mb-4">
                        <i class="mdi mdi-account-multiple mdi-36px"></i>
                        <p class="font-weight-medium mt-2">PDV</p>
                      </div>
<!--                       <h1 class="font-weight-light">ABRIR</h1> -->
<!--                       <h1 class="font-weight-light">CAIXA</h1> -->
                      <button type="button" class="btn btn-inverse-primary btn-rounded btn-icon">
                          <i class="mdi mdi-trending-up"></i>
                        </button>
                      
                    </div>
                  </div>
                </div>
                <div class="col-md-3 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <div class="text-danger mb-4">
                        <i class="mdi mdi-chart-pie mdi-36px"></i>
                        <p class="font-weight-medium mt-2">Estoque</p>
                      </div>
<!--                       <h1 class="font-weight-light">ENTRAR PRODUTO</h1> -->
                      
                      <button type="button" class="btn btn-inverse-danger btn-icon">
                          <i class="mdi mdi-plus"></i>
                      </button>
                    </div>
                  </div>
                </div>
                <div class="col-md-4 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <div class="text-info mb-4">
                        <i class="mdi mdi-car mdi-36px"></i>
                        <p class="font-weight-medium mt-2">Fornecedores</p>
                      </div>
<!--                       <h1 class="font-weight-light">CADASTRAR FORNECEDORES</h1> -->
                      
                      <button type="button" class="btn btn-inverse-info btn-icon">
                          <i class="mdi mdi-plus"></i>
                        </button>
                      
                    </div>
                  </div>
                </div>
                <div class="col-md-3 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <div class="text-success mb-4">
                        <i class="mdi mdi-verified mdi-36px"></i>
                        <p class="font-weight-medium mt-2">Usuários</p>
                      </div>
<!--                       <h1 class="font-weight-light">CADASTRAR USUÁRIOS</h1> -->
                      
                      <button type="button" class="btn btn-inverse-success btn-icon">
                          <i class="mdi mdi-plus"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row flex-grow-1">
              	
            	<div class="col-lg-12 grid-margin stretch-card">
	              <div class="card">
	                <div class="card-body">
	                  <h4 class="card-title">Produtos mais Vendidos</h4>
	                  <div class="table-responsive">
	                    <table class="table">
	                      <thead>
	                        <tr>
	                          <th>
	                            Descrição
	                          </th>
	                          <th>
	                            Vendas
	                          </th>
	                          <th>
	                            Estoque
	                          </th>
	                          <th>
	                            Categoria
	                          </th>
	                        </tr>
	                      </thead>
	                      <tbody>
	                        <tr>
	                          <td>
	                            Antartica 350ml
	                          </td>
	                          <td>
	                            500
	                          </td>
	                          <td>
	                            200
	                          </td>
	                          <td>
	                            Cerveja
	                          </td>
	                        </tr>
	                        <tr>
	                          <td>
	                            Pinga 51 1000ml
	                          </td>
	                          <td>
	                            60
	                          </td>
	                          <td>
	                            35
	                          </td>
	                          <td>
	                            Cachaça
	                          </td>
	                        </tr>
	                        <tr>
	                          <td>
	                            Palheiro
	                          </td>
	                          <td>
	                            15
	                          </td>
	                          <td>
	                            25
	                          </td>
	                          <td>
	                            Cigarro
	                          </td>
	                        </tr>
	                        <tr>
	                          <td>
	                            Old Par 750ml
	                          </td>
	                          <td>
	                            10
	                          </td>
	                          <td>
	                            5
	                          </td>
	                          <td>
	                            Whiskey
	                          </td>
	                        </tr>
	                        <tr>
	                          <td>
	                            BudWeiser 600ml
	                          </td>
	                          <td>
	                            300
	                          </td>
	                          <td>
	                            150
	                          </td>
	                          <td>
	                            Cerveja
	                          </td>
	                        </tr>
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
        <!-- content-wrapper ends -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <%@ include file="../../basicJS.jsp" %>

  <!-- Custom js for this page-->
  <script src="view/static/js/dashboard.js"></script>
  <!-- End custom js for this page-->
  
  
</body>

</html>

