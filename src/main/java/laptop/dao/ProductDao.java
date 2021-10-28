package laptop.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import laptop.model.Product;

@Component
@Repository
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
@Transactional	
public void createProduct(Product product) {
	
	this.hibernateTemplate.saveOrUpdate(product);
}
public List<Product> getAllProduct() {
	return this.hibernateTemplate.loadAll(Product.class);
	
	
}
@Transactional
public void deleteProduct(int productId) {
	Product p = this.hibernateTemplate.load(Product.class, productId);
	this.hibernateTemplate.delete(p);
	
	
}

public Product getProduct(int pid) {
	
	return this.hibernateTemplate.get(Product.class, pid);
}


}
