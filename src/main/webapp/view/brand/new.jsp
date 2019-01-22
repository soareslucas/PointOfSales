<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ponto de Vendas</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../view/static/vendors/iconfonts/mdi/font/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="../view/static/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="../view/static/vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="../view/static/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="../view/static/images/logo-mini.png" />
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
          <a class="navbar-brand brand-logo" href="index.html"><img src="../view/static/images/logo.png" alt="logo"/></a>
          <a class="navbar-brand brand-logo-mini" href="index.html"><img src="../view/static/images/logo-mini.png" alt="logo"/></a>
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
              <img src="../view/static/images/faces/face5.jpg" alt="profile"/>
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
            <a class="nav-link" href="index.jsp">
              <i class="mdi mdi-home menu-icon"></i>
              <span class="menu-title">Início</span>
            </a>
          </li>
		  
		  <li class="nav-item">
            <a class="nav-link" href="pdv/new">
              <i class="mdi mdi-cash-multiple menu-icon"></i>
              <span class="menu-title">PDV</span>
            </a>
          </li>
		  
  		  <li class="nav-item">
            <a class="nav-link" href="product/new">
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
                <li class="nav-item"> <a class="nav-link" href="product/new">Produtos</a></li>
                <li class="nav-item"> <a class="nav-link" href="category/list">Categorias</a></li>
                <li class="nav-item"> <a class="nav-link" href="itemtype/list">Tipos de Item</a></li>
				<li class="nav-item"> <a class="nav-link" href="unit/list">Unidades de medida</a></li>
				<li class="nav-item"> <a class="nav-link" href="brand/new">Marcas</a></li>
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
                <li class="nav-item"> <a class="nav-link" href="client/list">Clientes</a></li>
                <li class="nav-item"> <a class="nav-link" href="budge/list">Orçamentos</a></li>
				<li class="nav-item"> <a class="nav-link" href="order/list">Pedidos</a></li>
				<li class="nav-item"> <a class="nav-link" href="devolution/list">Devoluções</a></li>
				<li class="nav-item"> <a class="nav-link" href="paymenttype/list">Tipos de pagamento</a></li>
              </ul>
            </div>
          </li>
          
  		  	<li class="nav-item">
            <a class="nav-link" href="report">
              <i class="mdi mdi-chart-bar menu-icon"></i>
              <span class="menu-title">Relatórios</span>
            </a>
          </li> 
		  
        </ul>
      </nav>
      
      
      <!-- partial -->
      
            <!-- partial -->
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
                  <form class="forms-sample" method="post" action="add">
                    <div class="form-group">
                      <label for="exampleInputUsername1">Nome</label>
                      <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Nome da Marca">
                    </div>
       
                    <button type="submit" class="btn btn-primary mr-2">Cadastrar</button>
                    <button class="btn btn-light">Limpar</button>
                  </form>
                </div>
              </div>
            </div>
           </div>
          </div>
    </div>
    
    <!-- main-panel ends -->
    
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="../view/static/vendors/js/vendor.bundle.base.js"></script>
  <script src="../view/static/vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="../view/static/js/off-canvas.js"></script>
  <script src="../view/static/js/hoverable-collapse.js"></script>
  <script src="../view/static/js/template.js"></script>
  <script src="../view/static/js/settings.js"></script>
  <script src="../view/static/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="../view/static/js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

