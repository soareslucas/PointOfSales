<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Ponto de Vendas</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="view/static/vendors/iconfonts/mdi/font/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="view/static/vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="view/static/vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="view/static/css/vertical-layout-light/style.css">
  <!-- endinject -->
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
  <script src="view/static/vendors/js/vendor.bundle.base.js"></script>
  <script src="view/static/vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="view/static/js/off-canvas.js"></script>
  <script src="view/static/js/hoverable-collapse.js"></script>
  <script src="view/static/js/template.js"></script>
  <script src="view/static/js/settings.js"></script>
  <script src="view/static/js/todolist.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="view/static/js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

