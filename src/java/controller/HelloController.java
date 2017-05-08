package controller;

import dao.FeedReader;
import java.util.ArrayList;
import java.util.List;
import model.Feed;
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
    
    @RequestMapping(value = "/testrss", method = RequestMethod.GET)
    public String testrss(ModelMap modelMap) {
        
        List<Feed> feedList = new ArrayList();
        
        FeedReader feedReader1 = new FeedReader("http://feeds.t-online.de/rss/reisen");
        Feed feed1 = feedReader1.readFeed();
        feedList.add(feed1);
        
        FeedReader feedReader2 = new FeedReader("http://www.welt.de/reise/Fern/?service=Rss");
        Feed feed2 = feedReader2.readFeed();
        feedList.add(feed2);
        
        modelMap.addAttribute("feedList", feedList);
        
        /*
        modelMap.addAttribute("feed", feed1);
        modelMap.addAttribute("feed2", feed2);
        */
        
        return "testrss";
    }

}
