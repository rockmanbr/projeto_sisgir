package br.ucb.sisgir.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class PatrimonioController {

private final Result result;
	
	public PatrimonioController(Result result) {
		this.result = result;
	}
	

	@Get ("/patrimonio/formulario")
	public void formulario(){
		System.out.println("\nchamou o metodo formulario");
	}

}
