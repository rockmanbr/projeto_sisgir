package br.ucb.sisgir.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class IndexController {
	private final Result result;
	
	public IndexController(Result result) {
		this.result = result;
	}
	
	@Get("/")
	public void index() {
	}
	
	public void index(String msg) {
		result.include("mensagemErro", msg);
	}
	
	@Post
	@Path("/autenticar")
	public void autenticar(String username, String password) {
		System.out.println("\nusername" + username);
		if(username.equals("luciano")){
			result.redirectTo(this).home();
		} else {
			result.redirectTo(this).index("Usuário inválido!");
		}
		
		
	}
	
	public void home(){
		result.include("pendenciaList", null);
	}
	
}
