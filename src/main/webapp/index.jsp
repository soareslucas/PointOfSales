<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ponto de Vendas</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="static/vendors/iconfonts/mdi/font/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="static/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="static/vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="static/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="static/images/logo-mini.png" />
</head>
<body class="sidebar-mini">
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="navbar-menu-wrapper d-flex align-items-stretch justify-content-between">
        <ul class="navbar-nav mr-lg-2 d-none d-lg-flex">
          <li class="nav-item nav-toggler-item">
            <button class="navbar-toggler align-self-center" type="button" data-toggle="minimize">
              <span class="mdi mdi-menu"></span>
            </button>
          </li>
          <li class="nav-item nav-search d-none d-lg-flex">
            <div class="input-group">
              <div class="input-group-prepend">
                <span class="input-group-text" id="search">
                  <i class="mdi mdi-magnify"></i>
                </span>
              </div>
              <input type="text" class="form-control" placeholder="pesquisa" aria-label="search" aria-describedby="search">
            </div>
          </li>
        </ul>
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
          <a class="navbar-brand brand-logo" href="index.html"><img src="static/images/logo.png" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="static/images/logo-mini.png" alt="logo"/></a>
        </div>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item dropdown">
            <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="mdi mdi-bell-outline mx-0"></i>
              <span class="count"></span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <a class="dropdown-item">
                <p class="mb-0 font-weight-normal float-left">Você tem 2 notificações
                </p>
                <span class="badge badge-pill badge-warning float-right">Ver todas</span>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-success">
                    <i class="mdi mdi-information mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium">Estoque com quantidade mínima</h6>
                  <p class="font-weight-light small-text mb-0">
                    Cerveja Budweiser
                  </p>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                  <div class="preview-icon bg-warning">
                    <i class="mdi mdi-settings mx-0"></i>
                  </div>
                </div>
                <div class="preview-item-content">
                  <h6 class="preview-subject font-weight-medium">PDV</h6>
                  <p class="font-weight-light small-text mb-0">
                    Caixa 2 Aberto
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              <img src="static/images/faces/face5.jpg" alt="profile"/>
              <span class="nav-profile-name">José Roberto</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <a class="dropdown-item">
                <i class="mdi mdi-settings text-primary"></i>
                Configurações
              </a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item">
                <i class="mdi mdi-logout text-primary"></i>
                Sair
              </a>
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
    
    
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link" href="index.html">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">Início</span>
            </a>
          </li>
		  
		  <li class="nav-item">
            <a class="nav-link" href="index.html">
              <i class="mdi mdi-cash-multiple menu-icon"></i>
              <span class="menu-title">PDV</span>
            </a>
          </li>
		  
  		  <li class="nav-item">
            <a class="nav-link" href="produto/new">
              <i class="mdi mdi-stocking menu-icon"></i>
              <span class="menu-title">Estoque</span>
            </a>
          </li> 		  
		  
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#catalog" aria-expanded="false" aria-controls="ui-basic">
              <i class="mdi mdi-folder menu-icon"></i>
              <span class="menu-title">Catálogo</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="catalog">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/product.html">Produtos</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/category.html">Categorias</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/itemtype.html">Tipos de Item</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/unit.html">Unidades de medida</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/brand.html">Marcas</a></li>
              </ul>
            </div>
          </li>
		  
		  <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#purchases" aria-expanded="false" aria-controls="ui-basic">
              <i class="mdi mdi-cart menu-icon"></i>
              <span class="menu-title">Compras</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="purchases">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/supplier.html">Fornecedores</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/budget.html">Orçamentos</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/order.html">Pedidos</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/devolutions.html">Devoluções</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/paymenttype.html">Tipos de pagamento</a></li>
              </ul>
            </div>
          </li>
		  
		  <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#sales" aria-expanded="false" aria-controls="ui-basic">
              <i class="mdi mdi-coin menu-icon"></i>
              <span class="menu-title">Vendas</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="sales">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/client.html">Clientes</a></li>
                <li class="nav-item"> <a class="nav-link" href="pages/ui-features/budget.html">Orçamentos</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/order.html">Pedidos</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/devolutions.html">Devoluções</a></li>
				<li class="nav-item"> <a class="nav-link" href="pages/ui-features/paymenttype.html">Tipos de pagamento</a></li>
              </ul>
            </div>
          </li>
          
  		  	<li class="nav-item">
            <a class="nav-link" href="produto/new">
              <i class="mdi mdi-chart-bar menu-icon"></i>
              <span class="menu-title">Relatórios</span>
            </a>
          </li> 
		  
        </ul>
      </nav>
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
              
              
              
<!-- 			<div class="card d-flex flex-column justify-content-between"> -->
<!--                 <div class="card-body"> -->
<!--                   <div class="d-flex justify-content-between align-items-start"> -->
<!--                     <h4 class="card-title">Receita</h4> -->
<!--                     <div class="dropdown mb-4"> -->
<!--                       <button class="btn btn-sm btn-outline-secondary btn-rounded dropdown-toggle text-black" type="button" id="dropdownMenuButton1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
<!--                         Esta semana -->
<!--                       </button> -->
<!--                       <div class="dropdown-menu" aria-labelledby="dropdownMenuButton1"> -->
<!--                         <a class="dropdown-item" href="#">Este dia</a> -->
<!--                         <div class="dropdown-divider"></div> -->
<!--                         <a class="dropdown-item" href="#">Este mês</a> -->
<!--                         <div class="dropdown-divider"></div> -->
<!--                         <a class="dropdown-item" href="#">Esta semana</a> -->
<!--                         <div class="dropdown-divider"></div> -->
<!--                         <a class="dropdown-item" href="#">Este ano</a> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <h4 class="font-weight-light">Receita total</h4> -->
<!--                   <h1 class="font-weight-normal mb-0">36568</h1> -->
<!--                   <div class="d-md-flex justify-content-start mt-5"> -->
<!--                     <div class="mb-3 mb-lg-0"> -->
<!--                       <h4 class="font-weight-light text-primary">+40%</h4> -->
<!--                       <p class="text-primary mb-0">Crescimento</p> -->
<!--                     </div> -->
<!--                     <div class="mb-3 mb-lg-0 ml-md-4"> -->
<!--                       <h4 class="font-weight-light text-danger">2.5%</h4> -->
<!--                       <p class="text-danger mb-0">Devoluções</p> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </div> -->
<!--                 <div class="card-body px-0 pb-0 d-flex flex-column justify-content-between"> -->
<!--                   <canvas id="statistics-chart" class="mt-auto"></canvas> -->
<!--                 </div> -->
<!--               </div> -->
            
            
            
             
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
                      <h1 class="font-weight-light">ABRIR</h1>
                      <h1 class="font-weight-light">CAIXA</h1>
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
                      <h1 class="font-weight-light">ENTRAR PRODUTO</h1>
                      
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
                      <h1 class="font-weight-light">CADASTRAR FORNECEDORES</h1>
                      
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
                      <h1 class="font-weight-light">CADASTRAR USUÁRIOS</h1>
                      
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
          
          <div class="row">
            <div class="col-lg-4 grid-margin stretch-card">
            
            


            </div>
          </div>
		  
		  
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2019 <a href="https://www.goinf.com.br/" target="_blank">GoInf</a>. Todos direitos reservados.</span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="static/vendors/js/vendor.bundle.base.js"></script>
  <script src="static/vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="static/js/off-canvas.js"></script>
  <script src="static/js/hoverable-collapse.js"></script>
  <script src="static/js/template.js"></script>
  <script src="static/js/settings.js"></script>
  <script src="static/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="static/js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

