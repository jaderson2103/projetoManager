$(document).ready(function(){

	// escondendo as demais divs
	hideContents();

	//Mostrando a div com conteudo principal do site
	$('#principal').fadeIn();

	// verificando se houve click no ícone home
	$('#icone-home').on('click', function(){
		hideContents();
		$('#principal').fadeIn();
	});

	$('.a-empresa').on('click', function(){
		hideContents();
		$('#a-empresa').fadeIn();
	});

	// verificando se houve click no link produtos
	$('.contas').on('click', function(){
		hideContents();
		$('#contas').fadeIn();
	});

	$('.produtos').on('click', function(){
		hideContents();
		$('#produtos').fadeIn();
	});

	function hideContents() {
		$('#principal').hide();
		$('#a-empresa').hide();
		$('#contas').hide();
		$('#produtos').hide();
	}
});

// $("#idElemento").load('xpto.html');