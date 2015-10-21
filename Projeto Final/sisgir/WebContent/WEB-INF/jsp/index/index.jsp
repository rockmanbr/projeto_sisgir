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
 <link  rel="stylesheet" href="<c:url value="css/style.css"/> " />
 
 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 
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
	<body>
	<!-- Aqui começa o conteudo -->
		<div class="wrapper" role="main">
			<div class="container">    
				<div id="loginbox" style="margin-top:50px;" class="mainbox col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2">                    
					<div class="panel panel-primary" >
						<div class="panel-heading">
							<div class="panel-title">SISGIR - Login</div>
						</div>     
						
						<div style="padding-top:30px" class="panel-body" >

							<div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
							
							<form id="loginform" class="form-horizontal" action="<c:url value="/autenticar"/>" method="post" role="form">
									
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
										<input id="login-username" type="text" class="form-control" name="username" value="" placeholder="Digite o seu usuário...">                                        
									</div>
								
									<div style="margin-bottom: 25px" class="input-group">
										<span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
										<input id="login-password" type="password" class="form-control" name="password" placeholder="Digite a sua senha...">
									</div>
								<c:if test="${mensagemErro ne null}">
									<div class="alert alert-danger" role="alert">
										${mensagemErro}
									</div>
								</c:if>
								<div style="margin-top:10px" class="form-group">
									<!-- Button -->
									<div class="col-sm-12 controls">
										<input type="submit" id="btn-login" class="btn btn-lg btn-primary btn-block" value="Acessar">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>					
			</div><!-- Fim do container -->
		</div><!-- Fim do wrapper -->

	</body>
</html>