package com.ace.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import com.ace.model.Person;

@WebServlet(name = "XMLServlet", urlPatterns = "/XMLServlet")
public class XMLServlet extends HttpServlet
{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException
	{
		this.doPost(req, resp);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		String username = request.getParameter("username");
		Person p = new Person();
		
		if("zhangsan".equals(username))
		{
			p.setId(1);
			p.setUsername("zhangsan");
			p.setAddress("Beijing");
			p.setAge(22);
		}
		else
		{
			p.setId(2);
			p.setUsername("lisi");
			p.setAddress("Shanghai");
			p.setAge(33);
		}
		
		Document document = DocumentHelper.createDocument();
		Element usersElement = document.addElement("users");
		Element userElement = usersElement.addElement("user");
		Element idElement = userElement.addElement("id");
		Element usernameElement = userElement.addElement("username");
		Element addressElement = userElement.addElement("address");
		Element ageElement = userElement.addElement("age");
		
		idElement.setText(p.getId() + "");
		usernameElement.setText(p.getUsername());
		addressElement.setText(p.getAddress());
		ageElement.setText(p.getAge() + "");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("pragma", "no-cache");
		response.setHeader("cache-control", "no-cache");
		
		OutputFormat formater = OutputFormat.createPrettyPrint();
		XMLWriter xmlWriter = new XMLWriter(out, formater);
		xmlWriter.write(document);
	}

}
