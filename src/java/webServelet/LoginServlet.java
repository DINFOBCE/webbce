package webServelet;
import Model.dao.LoginDAO;
import Dao.LoginBean;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();

    }
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{HttpSession session = request.getSession(true);
			LoginBean user = new LoginBean();
			user.setCodAnexo(request.getParameter("codanexo"));
                        user.setDni(request.getParameter("documento"));
			user.setPassword(request.getParameter("password"));
                    			user = LoginDAO.logeo(user);
			if(user.isValid())
			{
                            session.removeAttribute("ms");
		session.setAttribute("NomAnexo",user.getNomAnexo());
                         session.setAttribute("CodAnexo",user.getCodAnexo());
                              user.setS_CodAnexo(session.getAttribute("CodAnexo").toString());
				response.sendRedirect("/webbce");
                                
			}else{
                            session.setMaxInactiveInterval(05);
                             session.setAttribute("ms","Datos Incorrectos");
                                   }
		response.sendRedirect("/webbce");
         } catch (Throwable exc)
		{
			System.out.println(exc );
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}