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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Hello, World!</h1>");
        HttpSession session = request.getSession(true);
        response.setContentType("text/html");
        PrintWriter out1 = response.getWriter();
        int count = 0;
        String head;
        if (session.isNew()) {
            head = "This is the New Session";
        } else {
            head = "This is the old Session";
            Integer oldCount = (Integer) session.getValue("count");
            if (oldCount != null) {
                count = oldCount + 1;
            }
        }
        session.putValue("count", count);
        out1.println("<HTML><BODY BGCOLOR=\"#FDF5E6\">\n" +
                "<H2 ALIGN=\"CENTER\">" + head + "</H2>\n" +
                "<TABLE BORDER=1 ALIGN=CENTER>\n"
                + "<TR BGCOLOR=\"#FFAD00\">\n"
                + "  <TH>Information Type<TH>Session Count\n"
                + "<TR>\n" + " <TD>Total Session Access\n" +
                "<TD>" + count + "\n" +
                "</TABLE>\n"
                + "</BODY></HTML>");
    }
}