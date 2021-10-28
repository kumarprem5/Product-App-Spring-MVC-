package laptop;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import laptop.dao.ProductDao;
import laptop.model.Product;

@Controller
public class MainController {
	@Autowired
	private ProductDao productDao;
	
    @RequestMapping("/")
	public String home(Model model) {
		List<Product> allProduct = productDao.getAllProduct();
    	model.addAttribute("products",allProduct);
		
    	
		return "index";
	}
	
    @RequestMapping("/add-product")
    public String createProduct(Model model) {
    	
    	model.addAttribute("title","Add Product");
    	
    	  return "add_product";	
    }
  @RequestMapping(value="/handler-product",method = RequestMethod.POST)
  public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
	  
	  System.out.println(product);
	  
	  productDao.createProduct(product);
	  
	  
	  RedirectView redirectView = new RedirectView();
	  redirectView.setUrl(request.getContextPath()+"/");
	  return redirectView;
	  
  }
  
  
  @RequestMapping("/delete/{productId}")
  public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) {
	 
	  this.productDao.deleteProduct(productId);
	  RedirectView redirectView = new RedirectView();
	  
	  
	  
	  redirectView.setUrl(request.getContextPath()+"/");
	  
	  return redirectView;
	  
	  
  }
  @RequestMapping("/update/{productId}")
  public String updateProduct(@PathVariable("productId") int productId, Model m) {
	  Product product = this.productDao.getProduct(productId);
	m.addAttribute("product",product);
	  return "update_form";
  }
  
  
    
}
