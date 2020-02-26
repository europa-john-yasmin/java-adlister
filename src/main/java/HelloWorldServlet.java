import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String name = req.getParameter("name");

        out.println("<HTML>");
        out.println("<HEAD><TITLE>Hello World</TITLE></HEAD>");
        out.println("<BODY>");
        out.println("<BIG>Hello World</BIG>");
        out.println("<FORM METHOD=GET ACTION=\"/hello\">\n" +
                "If you don't mind me asking, what is your name?\n" +
                "<INPUT TYPE=TEXT NAME=\"name\"><P>\n" +
                "<INPUT TYPE=SUBMIT>\n" +
                "</FORM>");
        out.println("Hello, " + name);
        out.println("</BODY></HTML>");

        HttpSession session = req.getSession(true);
        res.setContentType("text/html");
        PrintWriter out1 = res.getWriter();
        Integer count = 0;
        String head;
        if (session.isNew()) {
            head = "This is the New Session";
        } else {
            head = "This is the old Session";
            Integer oldcount = (Integer) session.getValue("count");
            if (oldcount != null) {
                count = oldcount + 1;
            }
        }
        session.putValue("count", count);
        out1.println("<HTML><BODY BGCOLOR=\"#00ff00\">\n" +
                "<H2 ALIGN=\"CENTER\">" + head + "</H2>\n" +
                "<TABLE BORDER=1 ALIGN=CENTER>\n"
                + "<TR BGCOLOR=\"#FFAD00\">\n"
                + "  <TH>Information Type<TH>Session Count\n"
                + "<TR>\n" + " <TD>Total Session Accesses\n" +
                "<TD>" + count + "\n" +
                "</TABLE>\n"
                + "</BODY></HTML>");
    }

    public String getServletInfo() {
        return "A servlet that knows the name of the person to whom it's" +
                "saying hello";
    }
}