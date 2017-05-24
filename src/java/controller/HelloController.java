package controller;

import model.dao.FeedReader;
import java.util.ArrayList;
import java.util.List;
import model.dao.Hotels;
import model.pojo.Feed;
import org.springframework.http.HttpEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
    
    @RequestMapping(value = "/searchhotel", method = RequestMethod.GET)
    public String searchHotelSearch() {       
        return "searchhotel";
    }
    
    @RequestMapping(value = "/searchhotel", method = RequestMethod.POST)
    public String searchHotelResults(@RequestParam(value="name") String name, ModelMap modelMap) { 
        try {
            modelMap.addAttribute("name", name);
            modelMap.addAttribute("hotels", Hotels.getHotels(name));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "searchhotel";
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

    @RequestMapping(value = "/packageholidays", method = RequestMethod.GET)
    public String packageHolidays() {
        return "packageholidays";
    }
    
    @RequestMapping(value = "/travelpreparations", method = RequestMethod.GET)
    public String travelPreparations() {
        return "travelpreparations";
    }
        
    @RequestMapping(value = "/popularroutes", method = RequestMethod.GET)
    public String popularRoutes() {
        return "popularroutes";
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

    @RequestMapping(value = "/allhotels", method = RequestMethod.GET)
    public String allhotels(ModelMap modelMap) {       
        try {
            modelMap.addAttribute("hotels", Hotels.getHotels());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "allhotels";
    }
        
}
