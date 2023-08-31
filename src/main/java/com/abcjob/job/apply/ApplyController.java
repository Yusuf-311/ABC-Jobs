package com.abcjob.job.apply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ApplyController {

    @Autowired
    private ApplyService applyService;

    @GetMapping("/applies")
    public String getAllApplies(Model model) {
        List<Apply> applies = applyService.getAllAppliesWithRelatedData();
        model.addAttribute("applies", applies);
        return "applies";
    }
    
   
    @GetMapping("/transfer-data")
    @ResponseBody
    public String transferData() {
        applyService.transferDataToApply();
        return "redirect:joblist";
    }
}
