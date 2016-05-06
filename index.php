<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">

	<title> OakSolutions - Teste </title>

	<!-- BOOTSTRAP CSS -->
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">

	<!-- JQUERY & BOOTSTRAP JS -->
	<script src="bootstrap/js/jquery-2.2.3.js" type="text/javascript"></script>
	<script src="bootstrap/js/bootstrap.js" type="text/javascript"></script>
	<script src="static_resources/alter-content.js" type="text/javascript"></script>
</head>
<body>
	
	<div class="container">

		<div>

			<a href="index.php">
				<img class="img-responsive" src="images/baner.gif" title="OakSolutions" alt="OakSolutions">
			</a>

			<nav class="navbar navbar-default">
				<div class="container-fluid">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" 
						data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.php" title="Home">
							<div id="icone-home" class="glyphicon glyphicon-home"></div><!-- Home -->
						</a>
					</div>

					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="a-empresa"><a href="#">A Empresa</a></li>
							<li class="compra"><a href="#">Compra</a></li>
							<li class="venda"><a href="#">Venda</a></li>
							<li class="contas"><a href="#">Contas</a></li>
							<li class="produtos"><a href="#">Produtos</a></li>
							<li class="relatorio"><a href="#">Relatorio</a></li>
						</ul>
						<!-- Ícone Sair -->
						<ul class="nav navbar-nav navbar-right">

							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" 
								aria-haspopup="true" aria-expanded="false"> <span class="glyphicon glyphicon-user"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#"><span id="" class="">Nome do Usuário</span></a></li>
									<li><a href="#">Alterar Dados</a></li>
									<li role="separator" class="divider"></li>
									<li><a href="#">Sair</a></li>
								</ul>
							</li>
						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
		</div>

		<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
			<div class="content">

				<?php include('Principal.html'); ?>
				<?php include('AEmpresa.html'); ?>
				<?php include('Contas.html'); ?>
				<?php include('Produtos.html'); ?>
			</div>
		</div>

		<hr>
	</div>

</body>
</html>












