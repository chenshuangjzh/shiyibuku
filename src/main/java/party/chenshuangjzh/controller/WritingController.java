package party.chenshuangjzh.controller;

import party.chenshuangjzh.controller.base.BaseController;
import party.chenshuangjzh.service.WritingService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.inject.Inject;

/**
 * Created by ninemax-jzh on 2016/1/29.
 */
@Controller
@RequestMapping("/writing/")
public class WritingController extends BaseController {
    @SuppressWarnings("unused")
	@Inject
    private WritingService writingService;

    @RequestMapping(value = "new",method = RequestMethod.GET)
    public String newWriting(){
        return "writing/new";
    }

    @RequestMapping(value = "all",method = RequestMethod.GET)
    public String all(){
        return "writing/home";
    }
}
