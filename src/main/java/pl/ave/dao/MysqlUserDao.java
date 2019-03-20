package pl.ave.dao;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import pl.ave.model.User;
import pl.ave.util.ConnectionProvider;

import java.util.List;

public class MysqlUserDao implements UserDao {

    private final static String CREATE =
            "INSERT INTO user(username, email, password) VALUES(:username, :email, :password)";
    private final static String READ =
            "SELECT username, email, active, user_id FROM user WHERE username =:username;";
    private final static String DELETE =
            "DELETE FROM user WHERE username=:username;";
    private final static String UPDATE =
            "UPDATE user SET username=:username, email=:email, password=:password WHERE username=:username;";

    private NamedParameterJdbcTemplate template;

    public MysqlUserDao(){
        template = new NamedParameterJdbcTemplate(ConnectionProvider.getDSInstance());
    }


    @Override
    public void create(User user) {
        BeanPropertySqlParameterSource beanParamSource = new BeanPropertySqlParameterSource(user);
        template.update(CREATE, beanParamSource);

    }

    @Override
    public User read(String username) {
        User resultUser = null;
        SqlParameterSource namedParameters = new MapSqlParameterSource("username", username);
        List<User> userList = template.query(READ, namedParameters, BeanPropertyRowMapper.newInstance(User.class));
        if(userList.get(0) != null){
            resultUser = userList.get(0);
        }
        return resultUser;
    }

    @Override
    public void delete(User user) {
        SqlParameterSource namedParameter = new MapSqlParameterSource("name", user.getUsername());
        template.update(DELETE, namedParameter);
    }

    @Override
    public void update(User user) {
        BeanPropertySqlParameterSource beanParamSource = new BeanPropertySqlParameterSource(user);
        template.update(DELETE, beanParamSource);
    }
}
