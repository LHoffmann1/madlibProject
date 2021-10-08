package com.madlib.app.Controller;

import com.madlib.app.DAO.MadlibDao;
import com.madlib.app.Model.Madlib;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;

@CrossOrigin
@RestController
@RequestMapping("/madlib")
public class MadlibController {

@Autowired
    private MadlibDao madlibDao;



    @GetMapping("/{id}")
        public Madlib getMadlib(@PathVariable("id") String madlibId){
        return madlibDao.getMadlib(madlibId);
    }


}
