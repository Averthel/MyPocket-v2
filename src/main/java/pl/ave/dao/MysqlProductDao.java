package pl.ave.dao;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import pl.ave.model.Product;
import pl.ave.util.ConnectionProvider;




import java.util.List;

public class MysqlProductDao implements ProductDao {

    private final static String CREATE =
            "INSERT INTO product(name, description, category, count, price) VALUES(:name, :description, :category, :count, :price);";
    private final static String READ =
            "SELECT description, category, price, count, name FROM product WHERE name=:name;";
    private final static String UPDATE =
            "UPDATE product SET description=:description, category=:category, count =:count, price=:price, name=:name WHERE name=:name;";
    private final static String DELETE =
            "DELETE FROM product WHERE name=:name;";



    private NamedParameterJdbcTemplate template;

    public MysqlProductDao() {
        template = new NamedParameterJdbcTemplate(ConnectionProvider.getDSInstance());
    }

    @Override
    public void create(Product product) {
        BeanPropertySqlParameterSource beanParamSource = new BeanPropertySqlParameterSource(product);
        template.update(CREATE, beanParamSource);
    }


    public Product read(String name) {
        Product resultProduct = null;
        SqlParameterSource namedParameters = new MapSqlParameterSource("name", name);
        List<Product> productList = template.query(READ, namedParameters, BeanPropertyRowMapper.newInstance(Product.class));
        if(productList.get(0) != null){
            resultProduct = productList.get(0);
        }
        return resultProduct;
    }


    public void update(Product product) {
        BeanPropertySqlParameterSource beanParamSource = new BeanPropertySqlParameterSource(product);
        template.update(UPDATE, beanParamSource);
    }


    public void delete(Product product){
        SqlParameterSource namedParameter = new MapSqlParameterSource("name", product.getName());
        template.update(DELETE, namedParameter);
    }
}

