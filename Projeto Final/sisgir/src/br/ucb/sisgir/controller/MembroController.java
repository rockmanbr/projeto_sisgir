package br.ucb.sisgir.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class MembroController {
	private final Result result;
	
	public MembroController(Result result) {
		this.result = result;
	}
	

	@Get ("/membro/formulario")
	public void formulario(){
		System.out.println("\nchamou o metodo formulario");
	}
}