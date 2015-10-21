package br.ucb.sisgir.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class DespesasController {

private final Result result;
	
	public DespesasController(Result result) {
		this.result = result;
	}
	
	@Get ("/despesas/formulario")
	public void formulario() {
		System.out.println("\nentrou no metodo despesas.formulario()");
	}
}
