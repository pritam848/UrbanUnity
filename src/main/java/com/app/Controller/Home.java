package com.app.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Home {
	@RequestMapping(value="/")
    public String HomePage()
    {
    	return "Home";
    }
}
