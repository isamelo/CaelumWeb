package br.com.caelum.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class MeuFiltro implements Filter {

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		String parametro = request.getParameter("logica");
		
		System.out.println("Chamada do MeuFiltro");
		
		System.out.println("Lógica solicitada: " + parametro);
	
		
		chain.doFilter(request, response);

	}

}
