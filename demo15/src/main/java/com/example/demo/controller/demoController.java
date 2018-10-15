package com.example.demo.controller;

import com.example.demo.dao.BugDao;
import com.example.demo.pojo.po.BugEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.text.SimpleDateFormat;
import java.util.List;

@Controller
public class demoController {


    @Autowired
    BugDao bugDao;

    // 例子
    @RequestMapping(value = "/bug")
    public String view(String str, Model model) {

//        System.out.println("收到的参数为------->"+str);
        model.addAttribute("para",str);

        return "nihao";
    }


    @RequestMapping(value = "/report")
    public String report(String str, Model model) {

        System.out.println("收到的参数为------->"+str);
        model.addAttribute("para",str);

        return "report";
    }


    @RequestMapping(value = "/bug", method = RequestMethod.POST)
    public String commit(BugEntity entity, Model model) {

        System.out.println("收到的参数为------->"+entity);

        bugDao.save(entity);

        model.addAttribute("para","<br/><font  size='5'>宋尚正在火速处理您的问题，请耐心等待</font><br/>");

        return "nihao";
    }

    @RequestMapping(value = "/bugList", method = RequestMethod.GET)
    public String getlist(BugEntity entity, Model model) {


        List<BugEntity> list = bugDao.findAll();

        model.addAttribute("list",list);

        return "list";
    }


    @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
    public String delete(@PathVariable Long id) {


        bugDao.deleteById(id);


        return "redirect:/bugList";
    }

}