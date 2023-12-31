package kh.lclass.jjapkorea.business.controller;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kh.lclass.jjapkorea.business.model.dto.JobPostingCategoryDto;
import kh.lclass.jjapkorea.business.model.dto.JobPostingDto;
import kh.lclass.jjapkorea.business.model.service.JobPostingUploadService;
import kh.lclass.jjapkorea.business.model.service.JobPostingService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RequiredArgsConstructor
@RequestMapping("/business")
@Slf4j
@Controller
public class JobPostingUploadController {

	@Autowired
	private JobPostingUploadService jobPostingUploadService;
	@Autowired
	private JobPostingService jobPostingService;
	@Autowired
	private JobPostingUploadService jobPostingUploadServiceImpl;

	@GetMapping("/jobpostingupload/register")
	public ModelAndView jobUpload(ModelAndView mv, Model model, String firstRecruitField) throws Exception {
		mv.setViewName("jpost/jpostUpload");
		
		return mv;
	}

    @PostMapping("/jobpostingupload/getSecondRecruitField")
    @ResponseBody
    public List<JobPostingCategoryDto> getSecondRecruitFields(@RequestParam String selectedOption) throws Exception {
 
    	return jobPostingUploadService.selectFirst(selectedOption);
    }
    @PostMapping("/jobpostingupload/getThirdRecruitField")
    @ResponseBody
    public List<JobPostingCategoryDto> getThirdRecruitFields(@RequestParam String selectedOption) throws Exception {
 
    	return jobPostingUploadService.selectSecond(selectedOption);
    }
    @PostMapping("/jobpostingupload/getFourthRecruitField")
    @ResponseBody
    public List<JobPostingCategoryDto> getFourthRecruitFields(@RequestParam String selectedOption) throws Exception {
    	
    	return jobPostingUploadService.selectThird(selectedOption);
    }
	
	
	

	@PostMapping("/jobpostingupload/register")
	public String jobUpload(JobPostingDto dto) {
		String jid =UUID.randomUUID().toString();
		dto.setJid(jid);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        String mid = authentication.getName();
        dto.setMid(mid);
		try {
			int result = jobPostingUploadService.insert(dto);
			if(result<1) {
				return "redirect:/business/jobpostingupload/register";
			}
			else{
				return "redirect:/business/jobpostingupload/list";
			}
		} catch (Exception e){
			e.printStackTrace();
			return "redirect:/business/jobpostingupload/register";
			
		}
		
	}
	
	
//	@GetMapping("/jobpostingupload/info")
//	public ModelAndView jobPostingUploadInfo(ModelAndView mv, Model model, String jid) throws Exception {
//		JobPostingDto dto = new JobPostingDto();
//		jid= dto.getJid();
//		List<Map<String, Object>> jobPostingData = jobPostingUploadService.getJobPostingWithInfo(jid);
//		mv.addObject("jobPostingData" ,jobPostingData);
//		mv.setViewName("jpost/jpostInfo");
//		return mv;
//	}
//	
	
	
	@GetMapping("/jobpostingupload/info")
	public String jobPostingUploadSubmit(JobPostingDto dto) {
		return "/jpost/jpostInfo";
	}
	

	
	@GetMapping("/jobpostingupload/list")
	public ModelAndView jobPostingUploadList(ModelAndView mv, Model model, String mid) {
		mid= (String) model.getAttribute("mid");

		try {
			mv.addObject("jpostList", jobPostingUploadService.selectList(mid));
			mv.setViewName("jpost/jpostList");
		} catch (Exception e) {
			e.printStackTrace();
			mv.setViewName("jpost/jpostList");
		}
		return mv;
	}
	
	@GetMapping("/jobpostingupload/edit")
	public ModelAndView jobPostingEdit(String jid, ModelAndView mv, RedirectAttributes rttr) throws Exception {
		Map<String, Object> jobPostingInfo = jobPostingUploadServiceImpl.getJobPostingWithInfo(jid);

			if (jobPostingInfo != null) {
				mv.addObject("jobPosting" ,jobPostingInfo);
				mv.setViewName("jpost/jpostEdit");
			} else {
				rttr.addFlashAttribute("alertMsg", "지금은 삭제된 공고입니다.");
				mv.setViewName("redirect:/business/jobpostingupload/list");
			}
			return mv;
		} 
	
	@PostMapping("/jobpostingupload/edit")
	public ModelAndView jobPostingUpdate(JobPostingDto dto, ModelAndView mv) throws Exception{
		jobPostingUploadServiceImpl.jobPostingUpdate(dto);
		
		mv.setViewName("redirect:/business/jobpostingupload/list");
		return mv;
		
	}
	
	
	
	
	@PostMapping("/jobpostingupload/list")
	public ModelAndView jobPostingDelete(String jid, ModelAndView mv) throws Exception{
		jobPostingUploadServiceImpl.jobPostingDelete(jid);
		mv.setViewName("redirect:/business/jobpostingupload/list");
		return mv;
		
	}
	
	
}
