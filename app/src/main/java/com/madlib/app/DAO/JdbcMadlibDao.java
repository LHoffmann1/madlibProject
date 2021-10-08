package com.madlib.app.DAO;

import com.madlib.app.Model.Madlib;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

//import javax.sql.DataSource;

@Component
public class JdbcMadlibDao implements MadlibDao {


    private JdbcTemplate jdbcTemplate;

    public JdbcMadlibDao(JdbcTemplate jdbcTemplate){
       this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Madlib getMadlib(String madlibId) {
        Madlib madlib = new Madlib();
        String sql = "SELECT madlib_string1, madlib_string2, madlib_string3, madlib_string4, madlib_string5, " +
                "madlib_string6, madlib_string7 from madlibs WHERE madlib_id=?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, madlibId);

        if(results.next()){
            String string1 = results.getString("madlib_string1");
            String string2 = results.getString("madlib_string2");
            String string3 = results.getString("madlib_string3");
            String string4 = results.getString("madlib_string4");
            String string5 = results.getString("madlib_string5");
            String string6 = results.getString("madlib_string6");
            String string7 = results.getString("madlib_string7");

            madlib.setMadlibString1(string1);
            madlib.setMadlibString2(string2);
            madlib.setMadlibString3(string3);
            madlib.setMadlibString4(string4);
            madlib.setMadlibString5(string5);
            madlib.setMadlibString6(string6);
            madlib.setMadlibString7(string7);
        }
        return madlib;
    }
}
