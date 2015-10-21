<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
 <!-- Bootstrap -->
 <link rel="stylesheet" href="<c:url value="/css/bootstrap-responsive.css"/> "/>
 <link rel="stylesheet" href="<c:url value="/css/bootstrap.css"/> " />
 
 <!-- Styles -->
 <link  rel="stylesheet" href="<c:url value="/css/style.css"/> " />
 
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
 <script src="<c:url value="/js/jquery.min.js"/>"></script>
 
 <!-- Include all compiled plugins (below), or include individual files as needed -->
 <script type="text/javascript" src="<c:url value="/js/bootstrap.js" />"></script>
 
 <title>SISGIR - Sistema de Gerenciamento de Instituições Religiosas</title>
 
 <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
 <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
 <!--[if lt IE 9]>
 <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
 <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
 <![endif]-->
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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


</body>
</html>