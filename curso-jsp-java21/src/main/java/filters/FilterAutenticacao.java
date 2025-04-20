package filters;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;


@WebFilter(urlPatterns = {"/principal/*"}) /*Intercepta todas as requisicoes que vierem do projeto ou mapeamento*/
public class FilterAutenticacao extends HttpFilter implements Filter {

	private static final long serialVersionUID = 1L;


	public FilterAutenticacao() {
        super();
        
    }

	/*Encerra os processos quando o servidor e parado*/
	// Mataria a conexao com banco
	public void destroy() {
		
	}

	/*Intercepta as requisicoes e as respostas no sistema*/
	/*Tudo que fizer no sistema passa por ele*/
	/*Validacao de autenticacao, Dar commit e roolbak de transacoes do banco*/
	/*Validar e fazer redirecionamento de paginas*/
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		
		String usuarioLogado = (String) session.getAttribute("usuario");
		
		String urlParaAutenticar = req.getServletPath(); /*Url que esta sendo acessada*/
		
		/*Validar se esta logado se nao tiver redireciona para a tela de login*/
		if (usuarioLogado == null  && !urlParaAutenticar.equalsIgnoreCase("/principal/ServletLogin")) { /*Não esta logado*/
			
			RequestDispatcher redireciona = request.getRequestDispatcher("/index.jsp?url=" + urlParaAutenticar);
			
			request.setAttribute("msg", "Por favor realize o login");
			redireciona.forward(request, response);
			return; /*Para a execucao e redireciona para o login*/
			
			
		}else {
			chain.doFilter(request, response);			
		}
		
	}

	/*Ele inicia os processos ou recursos quando o servidor sobe o projeto*/
	//exemplo: inicia a conexao com o banco
	public void init(FilterConfig fConfig) throws ServletException {
		
	}

}
