package com.jwellStore.controller;



import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.jwellStore.model.Product;
import com.jwellStore.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService productService;

    @RequestMapping("/productList/all")
    public String getProducts(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productList";
    }

    @RequestMapping("/viewProduct/{productId}")
    public String viewProduct(@PathVariable int productId, Model model) throws IOException{
        Product product = productService.getProductById(productId);
        model.addAttribute("product", product);

        return "viewProduct";
    }

    @RequestMapping("/productList")
    public String getProductByCategory(@RequestParam("searchCondition") String searchCondition, Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);
        model.addAttribute("searchCondition", searchCondition);

        return "productList";
    }
    @RequestMapping(value="/addProduct",method=RequestMethod.GET)
	public String getFurnitureProductForm(Model model){
		Product item=new Product();
		//Category category=new Category();
		//category.setCid(1);//New Arrivals
		//set the category as 1 for the Book book
		//item.setCategory(category);
		model.addAttribute("FurnitureProductFormObj",item);
		return "SportItemForm";
	}
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public String addProduct( @Valid @ModelAttribute(value="FurnitureProductFormObj")  Product product,BindingResult result){
		if(result.hasErrors())
			return "SportItemForm";
	      productService.addProduct(product);
	MultipartFile image=product.getProductImage();
		if(image!=null && !image.isEmpty()){
		Path path=Paths.get("C:/Users/shiva/New/jwell/src/main/webapp/WEB-INF/resources/images/" 
		+ product.getProductId() + ".jpg");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
	 		// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		return "redirect:/getAllItems";
	}

} // The End of Class;
