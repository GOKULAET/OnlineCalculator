package com.calculator;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OnlineCalculator
 */
public class OnlineCalculator extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public OnlineCalculator() {
        System.out.println("Default constructor");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=null;
		System.out.println("in do get method");
		String uri=request.getRequestURI();
		System.out.println("URI is"+uri);
		PrintWriter out=response.getWriter();
		String n1=request.getParameter("number1");
		String n2=request.getParameter("number2");
		String operator=null;
				operator=request.getParameter("operator");
		double result=0;
		System.out.println(operator);
		//System.out.println(operator.isEmpty());
		System.out.println(n2);
		
		if(n1.isEmpty() || n2.isEmpty() || operator==null) {
		request.setAttribute("result","Empty inputs!! Please enter number inputs and Choose operator  ");
		rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
		return;
		}
		if (!n1.matches("[-+]?\\d*\\.?\\d+") || !n2.matches("[-+]?\\d*\\.?\\d+")) {
			request.setAttribute("result","Non-numeric input!! Please enter number inputs ");
			rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
			return;	
			}
		
		else
		{	
		switch (operator) {
		case "addition":
			result=Double.parseDouble(n1)+Double.parseDouble(n2);
			break;
			
		case "subtraction":
			result=Integer.parseInt(n1)-Double.parseDouble(n2);
			break;
		case "multiplication":
			result=Double.parseDouble(n1)*Double.parseDouble(n2);
			break;
		case "division":
			result=Double.parseDouble(n1)/Double.parseDouble(n2);
			break;

		default:
			break;
		}	
		request.setAttribute("result","Result is "+result);
		rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
		return;
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
