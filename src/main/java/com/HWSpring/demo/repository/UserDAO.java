package com.HWSpring.demo.repository;

import com.HWSpring.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class UserDAO {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public UserDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void save(User user){
        SimpleJdbcInsert jdbcInsert = new SimpleJdbcInsert(jdbcTemplate);
        jdbcInsert.withTableName("users").usingColumns("first_name", "last_name");
        BeanPropertySqlParameterSource param = new BeanPropertySqlParameterSource(user);

        jdbcInsert.execute(param);
    }

    public User getById(int id){
        String query = "SELECT * FROM USERS WHERE id = ?";
        Object[] args = {id};
        User user = jdbcTemplate.queryForObject(query, args,
                BeanPropertyRowMapper.newInstance(User.class));
        return user;
    }

    public List<User> getAllUsers(){
        String query = "SELECT * FROM USERS";

        List<User> users = jdbcTemplate.query(query,
                BeanPropertyRowMapper.newInstance(User.class));

        return users;
    }

    public void update(User user){
        String query = "UPDATE USERS SET first_name = :firstName, last_name=:lastName WHERE id=:id";
        BeanPropertySqlParameterSource param = new BeanPropertySqlParameterSource(user);

        NamedParameterJdbcTemplate template = new NamedParameterJdbcTemplate(jdbcTemplate);
        template.update(query, param);
    }

    public void deleteById(int id){
        String query = "DELETE FROM USERS WHERE id = ?";
        jdbcTemplate.update(query, id);
    }
}
