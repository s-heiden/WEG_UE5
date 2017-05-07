package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/hello")
public class HelloController {
    
    @RequestMapping(value = "/sayhi", method = RequestMethod.GET)
    public String sayHello(ModelMap modelMap) {
        modelMap.addAttribute("vorname", "Max");
        
        // Return the filename (without .jsp) of the view to be rendered
        return "hello";
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {        
        return "index";
    }

    @RequestMapping(value = "/faq", method = RequestMethod.GET)
    public String faq() {
        return "faq";
    }

    @RequestMapping(value = "/flights", method = RequestMethod.GET)
    public String flights() {
        return "flights";
    }
    
    @RequestMapping(value = "/hotels", method = RequestMethod.GET)
    public String hotels() {
        return "hotels";
    }

    @RequestMapping(value = "/packageHolidays", method = RequestMethod.GET)
    public String packageHolidays() {
        return "packageHolidays";
    }

}
