package com.pro.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.pro.domain.User;
import com.pro.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/toM")
    public String toM(){

        return "main";
    }
    /*@RequestMapping("/toList")
    public String toList(Model model){
        model.addAttribute("userList",userService.getUsers());
        return "user/users";
    }*/
    @RequestMapping("/toAdd")
    public String toAdd(){
        return "user/add";
    }
    @PostMapping("/insertUser")
    public String insertUser(User user){
        userService.insert(user);
        return "redirect:/toList";
    }
    @GetMapping("/toUpdate/{userId}")
    public String toUpdate(@PathVariable("userId")int userId,Model model){
        model.addAttribute("user",userService.getUser(userId));
        return "user/update";
    }
    @PostMapping("/updateUser")
    public String updateUser(User user){
        userService.update(user);
        return "redirect:/toList";
    }
    @GetMapping("/delete/{userId}")
    public String delete(@PathVariable("userId")int userId){
        userService.delete(userId);
        return "redirect:/toList";
    }
    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "5")int size){
        ModelAndView mv=new ModelAndView();
        List<User> userList2=userService.getUsers(page,size);
        PageInfo pageInfo=new PageInfo(userList2);
        mv.addObject("pageInfo",pageInfo);
        mv.setViewName("user/users");
        return mv;
    }
    @RequestMapping("/toList")
    public String toList(@RequestParam(defaultValue = "1") int page,
                         @RequestParam(defaultValue = "5")int size,Model model){
        PageInfo pageInfo=new PageInfo(userService.getUsers(page,size));
        model.addAttribute("pageInfo",pageInfo);
        return "user/users";
    }
}
