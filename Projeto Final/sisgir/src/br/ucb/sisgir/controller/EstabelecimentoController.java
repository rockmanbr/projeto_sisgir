package br.ucb.sisgir.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;

@Resource
public class EstabelecimentoController {
	private final Result result;
	
	public EstabelecimentoController(Result result) {
		this.result = result;
	}
	
	@Get ("/estabelecimento/formulario")
	public void formulario() {
		System.out.println("\nentrou no metodo Estabelecimento.formulario()");
	}
}
