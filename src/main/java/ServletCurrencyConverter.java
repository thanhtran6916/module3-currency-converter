import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "ServletCurrencyConverter", value = "/ServletCurrencyConverter")
public class ServletCurrencyConverter extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String rate = request.getParameter("rate");
        String usd = request.getParameter("usd");
        PrintWriter writer = response.getWriter();
        final boolean rateCheck = rate.matches("\\D");
        final boolean usdCheck = usd.matches("\\D");
        if (rateCheck || usdCheck) {
            writer.println("Error input number");
        } else {
            double rateNumber = Double.parseDouble(rate);
            double usdNumber = Double.parseDouble(usd);
            double result = rateNumber * usdNumber;
            writer.println("<h1>" + result + "</h1>");
        }

    }
}
