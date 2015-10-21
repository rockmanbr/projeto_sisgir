<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
 <meta charset="utf-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="decription" content="">
 <meta name="viewport" content="width=device-width, initial-scale=1">
 
 <!-- Bootstrap -->
 <link rel="stylesheet" href="<c:url value="/css/bootstrap-responsive.css" />" />
 <link rel="stylesheet" href="<c:url value="/css/bootstrap.css" />" />
 
 <!-- Styles -->
 <link  rel="stylesheet" href="<c:url value="/css/style.css" />" />
 
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
 <script src="<c:url value="/js/jquery.min.js" />"></script>
 
 <!-- Include all compiled plugins (below), or include individual files as needed -->
 <script type="text/javascript" src="<c:url value="/js/bootstrap.js" />"></script>
 
 <title>SISGIR - Sistema de Gerenciamento de Institui&ccedil;&otilde;es Religiosas</title>
 
 <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
 <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
 <!--[if lt IE 9]>
 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
 <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
 <![endif]-->
</head>
	<body>
	
		<nav class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
			<div class="container-fluid">
				
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
					</button>
				
				<!-- Logo -->
					
					<a class="navbar-brand" href<c:url value="/index/home"/>">SISGIR</a>
				</div>
			
				<!-- Collect the nav links, forms, and other content for toggling -->
				<!-- Menu -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Sistema<b class="caret"></b></a>
						<ul class="dropdown-menu">
								<li><a href="<c:url value="/estabelecimento/formulario"/>">Igrejas e Congregações</a></li>
								<li class="divider"></li>
								<li><a href="#">Contas de Usuários</a></li>
							</ul>
						<li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Secretaria <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value="/membro/formulario"/>">Cadastro de Membros</a></li>
							</ul>
						</li>
						<li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Tesouraria <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value="/fornecedor/formulario"/>">Fornecedores</a></li>
								<li class="divider"></li>
								<li><a href="<c:url value="/patrimonio/formulario"/>">Patrimônio</a></li>
								<li class="divider"></li>
								<li class="dropdown-submenu">
									<a tabindex="-1">Financeiro</a>
									<ul class="dropdown-menu">
										<li><a href="<c:url value="/despesas/formulario"/>">Lançamento de Despesas</a></li>
										<li><a href="<c:url value="/receitas/formulario"/>">Lançamento de Receitas</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li class="dropdown"><a class="dropdown-toggle" href="#" data-toggle="dropdown">Relatórios<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="<c:url value="/relatorio/formulario"/>">Secretaria</a></li>
								<li class="divider"></li>
								<li><a href="<c:url value="/relatorio/formulario"/>">Financeiro</a></li>
							</ul>
					    </ul>

					<div class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-user"></span>&nbsp;Usuário</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span>&nbsp;Ajuda</a></li>
						<li><a href="index.html"><span class="glyphicon glyphicon-off"></span>&nbsp;Sair</a></li>
					</div>
				</div><!-- /.navbar-collapse -->
			</div><!-- /.container -->
		</nav>
	
		<!-- Aqui começa o conteudo -->
		<div class="wrapper" role="main">
			<div class="container">
				
				<h3 class="page-header">Cadastro de Receitas</h3>
		        
				<form action="add.html">
					<div class="row">
					
					<div class="form-group col-md-2">
						<label for="nr_lanc">Nº do Lançamento</label>
						<input type="text" class="form-control" id="nr_lanc" placeholder="Automático">
					</div>
					<div class="form-group col-md-2">
						<label for="codigo">Código</label>
						<input type="text" class="form-control" id="codigo" placeholder="Digite o código">
					</div>
					<div class="form-group col-md-6 ">
						<label for="name">Nome</label>
						<input type="text" class="form-control" id="name" placeholder="Digite o nome">
					</div>
					</div>
					<!-- /.row -->
					<div class="row">
					<div class="form-group col-md-2">
						<label for="dt_lanc">Data</label>
						<input type="date" class="form-control" id="dt_lanc" placeholder="Digite a data">
					</div>
					<div class="form-group col-md-2">
						<label for="valor">Valor</label>
						<input type="text" class="form-control" id="valor" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-2">
						<label for="cod">Igreja</label>
						<input type="text" class="form-control" id="cod" placeholder="Digite o código">
					</div>
					<div class="form-group col-md-6">
						<label for="nm_igreja">Nome</label>
						<input type="text" class="form-control" id="nm_igreja" placeholder="">
					</div>
					</div>
					<!-- /.row -->
					<div class="row">
					 <div class="form-group col-md-12">
						<label for="contrib">Complemento Contribuição:</label>
						<textarea class="form-control" rows="1" id="contrib"></textarea>
					</div>
					</div>
					<!-- /.row -->
					<div class="row">
					<div class="form-group col-md-2">
						<label for="id_cont">Conta Contábil</label>
						<input type="text" class="form-control" id="id_cont" placeholder="Digite a conta">
					</div>

					<div class="form-group col-md-6">
						<label for="nome">Descrição Conta</label>
						<input type="text" class="form-control" id="nome" placeholder="">
					</div>
					</div>
					<!-- /.row -->
					<hr/>
					
					<div class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary">Salvar</button>
						<a href="#" class="btn btn-default">Cancelar</a>
					</div>
					</div>
					<!-- /.row -->
				</form>
			</div>
		</div><!-- Fim do conteudo -->
	
	</body>
</html>