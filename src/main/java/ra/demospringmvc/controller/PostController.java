package ra.demospringmvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ra.demospringmvc.service.IPostService;

@Controller
//@RequestMapping("/post")
public class PostController {
    @Autowired
    private IPostService postService;
    @RequestMapping(value = "/home",method = RequestMethod.GET) // get
    public String home(Model model){
        // lấy ra danh sách bài đăng và gửi nó đến view
        model.addAttribute("list",postService.findAllPost());
        return "home";
    }
    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String search(@RequestParam String search, Model model){
        model.addAttribute("list",postService.findAllPostByTitleOrContent(search));
        model.addAttribute("search",search);
        return "home";
    }
}
