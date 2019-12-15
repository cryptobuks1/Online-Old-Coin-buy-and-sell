package com.mphasis.CoinProject.controller;





import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.mphasis.CoinProject.Bo.OrdersBo;
import com.mphasis.CoinProject.Bo.ProductBo;
import com.mphasis.CoinProject.model.Orders;
import com.mphasis.CoinProject.model.Product;


@RestController
public class OrdersController {
	
	@Autowired
	OrdersBo ob;
	
	@Autowired
	ProductBo pb;

	
//	@RequestMapping("/sell")
//	public ModelAndView twentyMethod()
//	{
//		return new ModelAndView("sell");
//	}
//	
	@RequestMapping("/addproduct")
	public ModelAndView thirdMethod()
	{
		return new ModelAndView("addproduct");
	}
	
	@RequestMapping(value="insertProduct", method=RequestMethod.POST)
	public ModelAndView secondMethod(HttpServletRequest request) 
	{

		ModelAndView mv1= null;
		String productName = request.getParameter("pname");
		int price = Integer.parseInt(request.getParameter("pprice"));
		String category = request.getParameter("pcategory");
		String description = request.getParameter("pdescription");
		String stock = request.getParameter("pstock");
		String period = request.getParameter("period");
		String material = request.getParameter("material");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int userid = Integer.parseInt(request.getParameter("userid"));
		
		
		
		
		Product p = new Product(0, category, price, productName, description, stock, period, material,quantity, userid);
		boolean j = pb.insertProduct(p);
		
	if(j) {
	
		mv1= new ModelAndView("success");}
	
	else {
		mv1= new ModelAndView("index");}
	
	return mv1;
		
	
//	return new ModelAndView("success");
}
	
	@RequestMapping("/product")
	public ModelAndView viewProducts(HttpServletRequest req) {
		ModelAndView mv=new ModelAndView("product");
		
		
		List <Product> lig = pb.getAllProducts();
		mv.addObject("lig", lig);
		
//		List <Product> lig = pb.getoldproducts();
//		mv.addObject("lig", lig);
		return mv;
	
}
//	@SuppressWarnings("null")
	@RequestMapping(value="insertOrder", method=RequestMethod.POST)
	public ModelAndView method(HttpServletRequest req) {
		ModelAndView mv2=null;
		mv2 =new ModelAndView("orders");
		
		int pid = Integer.parseInt(req.getParameter("productid"));
		System.out.println(pid);
	
		List <Product> list=pb.insertOrder(pid);
		
		mv2.addObject("list", list);
		
		return mv2;
	
}
	
	
	@RequestMapping(value="insertOrderTable", method=RequestMethod.POST)
	public ModelAndView eightyMethod(HttpServletRequest request)
	{

	
		String productName = request.getParameter("productname");
		double price = Double.parseDouble(request.getParameter("productprice"));
//		String category = request.getParameter("productcategory");
		
		int productid = Integer.parseInt(request.getParameter("productid"));
		int sellerid = Integer.parseInt(request.getParameter("sellerid"));
		int buyerid = Integer.parseInt(request.getParameter("userid"));
		LocalDate no = LocalDate.now();
		String date=no.toString();
		 String status="received"; 
		 String paymentmode= request.getParameter("paymentmode"); 
		   String comment = request.getParameter("comment"); 
		   Integer quantity= Integer.parseInt(request.getParameter("quantity"));
		   
		   Orders o = new Orders(1, productid, price, productName,date, buyerid, sellerid, comment, status,paymentmode, quantity);
		@SuppressWarnings("unused")
		boolean b = ob.insertO(o);
		
		if(paymentmode == "Wallets")
		return new ModelAndView("wallets");
		
		else if(paymentmode == "Internet Banking")
			return new ModelAndView("internetbanking");
		
		else if(paymentmode == "Credit/Debit Card")
			return new ModelAndView("creditdebit");
		else 
			return new ModelAndView("ordersubmitted");
	
}
}
