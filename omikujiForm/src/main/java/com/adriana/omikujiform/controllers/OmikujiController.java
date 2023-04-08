package com.adriana.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
    
    @GetMapping("/omikuji")
    public String showForm() {
        return "form.jsp";
    }
    
    @GetMapping("/omikuji/show")
    public String showResult(Model model, HttpSession session) {
        String message = (String) session.getAttribute("message");
        model.addAttribute("message", message);
        session.removeAttribute("message");
        return "show.jsp";
    }
    
    @PostMapping("/omikuji/show")
    public String processForm(@RequestParam("number") int number,
                              @RequestParam("city") String city,
                              @RequestParam("person") String person,
                              @RequestParam("activity") String activity,
                              @RequestParam("livingThing") String livingThing,
                              @RequestParam("message") String message,
                              HttpSession session) {
       
    			String result = String.format("In %d years you will live in %s with %s as your 						roommate, selling %s for a living. The next time you see a %s, you will 						have good luck. Also, %s",
                number, city, person, activity, livingThing, message);
    				session.setAttribute("message", result);
    				return "redirect:/omikuji/show";


    }
}

