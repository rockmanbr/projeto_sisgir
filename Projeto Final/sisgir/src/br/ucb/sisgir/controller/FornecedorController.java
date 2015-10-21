package br.ucb.sisgir.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class FornecedorController {
	
private final Result result;
	
	public FornecedorController(Result result) {
		this.result = result;
	}
	

	@Get ("/fornecedor/formulario")
	public void formulario(){
		System.out.println("\nchamou o metodo formulario");
	}

}
