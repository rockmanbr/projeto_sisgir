<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
 <link rel="stylesheet" href="<c:url value="/css/bootstrap-responsive.css"/> "/>
 <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/> " />
 
 <!-- Styles -->
 <link  rel="stylesheet" href="<c:url value="/css/style.css"/> " />
 
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
 <script src="<c:url value="/js/jquery.min.js"/>"></script>
 
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
				<h3 class="page-header">Cadastro de Fornecedores</h3>
		        
				<form action="add.html">
					<div class="row">
					<div class="form-group col-md-2">
						<label for="codigo">Código</label>
						<input type="text" class="form-control" id="codigo" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-5">
						<label for="nome">Nome</label>
						<input type="text" class="form-control" id="nome" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="cnpj">CPF / CNPJ</label>
						<input type="text" class="form-control" id="cnjp" placeholder="Digite o valor">
					</div>
					<div class="form-group col-lg-2 col-md-2">
						<label for="sel1">Tipo</label>
						<select class="form-control" id="sel1">
						<option>Física</option>
						<option>Jurídica</option>
						</select>
					</div>
					</div>
					<!-- /.row -->
					<div class="row">
					<div class="form-group col-md-5">
						<label for="exampleInputEmail1">Ramo de Atividade</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-1">
						
					</div>
					
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Ins. Estadual</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Ins. Municipal</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					</div>
					<!-- /.row -->
					<hr></hr>
					<div class="row">
					<div class="form-group col-md-2">
						<label for="exampleInputEmail1">CEP</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-5">
						<label for="exampleInputEmail1">Endereço</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-1">
						<label for="exampleInputEmail1">Número</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="">
					</div>
					<div class="form-group col-md-4">
						<label for="exampleInputEmail1">Complemento</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					</div>
					<!-- /.row -->
					<div class="row">
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Bairro</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Cidade</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Estado</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Município</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					</div>
					<!-- /.row -->
					<hr></hr>
					<div class="row">
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Telefone</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Celular</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Fax</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-3">
						<label for="exampleInputEmail1">Pessoa para Contato</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					</div>
					<!-- /.row -->
					<div class="row">
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">Email</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					<div class="form-group col-md-6">
						<label for="exampleInputEmail1">Site</label>
						<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Digite o valor">
					</div>
					</div>
					<!-- /.row -->
					<hr />
					
					<div class="row">
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary">Salvar</button>
						<a href="add.html" class="btn btn-default">Cancelar</a>
					</div>
					</div>
				    <!-- /.row -->
				</form>
				</div>
			    
			</div>	
		</div>
		<!-- Fim do conteudo -->

	</body>
</html>