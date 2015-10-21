package br.ucb.sisgir.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class ReceitasController {
private final Result result;
	
	public ReceitasController (Result result) {
		this.result = result;
	}
	
	@Get ("/receitas/formulario")
	public void formulario() {
		System.out.println("\nentrou no metodo receitas.formulario()");
	}
}
