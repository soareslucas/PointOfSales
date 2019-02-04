(function($) {
  'use strict';
  $(function() {
    $('#order-listing').DataTable({
      "aLengthMenu": [
        [5, 10, 15, -1],
        [5, 10, 15, "Todos"]
      ],
      "iDisplayLength": 10,
      fnPageChange: 'proximo',
      "language": {
    	  "lengthMenu": "Mostrar _MENU_ Registros",
    	  "infoEmpty": "Sem dados para mostrar",
          "info": "Mostrando p&aacute;gina _PAGE_ de _PAGES_ p&aacute;gina(s)",
          search: "",
          "paginate": {
        	  "previous": "Anterior",
        	  "next": "Pr&oacute;ximo"
       }
      }
    });
    $('#order-listing').each(function() {
      var datatable = $(this);
      // SEARCH - Add the placeholder for Search and Turn this into in-line form control
      var search_input = datatable.closest('.dataTables_wrapper').find('div[id$=_filter] input');
      search_input.attr('placeholder', 'Pesquisa');
      search_input.removeClass('form-control-sm');
      // LENGTH - Inline-Form control
      var length_sel = datatable.closest('.dataTables_wrapper').find('div[id$=_length] select');
      length_sel.removeClass('form-control-sm');
    });
    
//    var html = $('#order-listing_filter').html();
//    
//    html =  "<div class='row'>" +
//    		" <div class='col-6' >" +
//    		"  <button onclick=\" window.location='newBrand' \" type='button' class='btn btn-inverse-success'>" +
//    		" 	ADICIONAR <i class='mdi mdi-plus'>" +
//    		"	</i>" +
//    		"  </button> " +
//    		" </div>  " +
//    		" <div class='col-6' > "+
  //  		"  <div class='row'>  " +
  //  		"	 <div class='col-8'>" +
//    			   html  +
  //			"    </div>" +
  //  		"    <div class='col-4'>" +
 //			"    </div>  " +
//			"  </div>  " +
//			" </div>  " +
//			"</div>";
//    
//    $('#order-listing_filter').html(html);
    
  });
})(jQuery);