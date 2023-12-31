package kh.lclass.jjapkorea.person.controller;

import java.security.Principal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kh.lclass.jjapkorea.business.model.service.ApplyService;
import kh.lclass.jjapkorea.person.model.dto.Pagination;

@Controller
@RequestMapping("/person/apply")
public class ApplyController {
	@Autowired
	ApplyService applyServiceImpl;
	
	@GetMapping("/list")
	public String ApplyList(Principal principal, Model model, @RequestParam(name = "page", defaultValue = "1") int page,
            @RequestParam(name = "itemsPerPage", defaultValue = "5") int itemsPerPage) throws Exception {
		String participant = principal.getName();
		List<Map<String, Object>> applyList = applyServiceImpl.applyList(participant);
		model.addAttribute("applyList", applyList);
		
		// 전체 데이터의 총 수를 구한 뒤, 페이징 정보를 생성
	    int totalItems = applyServiceImpl.getTotalItems(participant);
	    Pagination pagination = new Pagination(totalItems, page, itemsPerPage);
	    model.addAttribute("pagination", pagination);
		return "jpost/applyList";
	}
	
	@PostMapping("/list")
	public String ApplyList(String jid) throws Exception {
		applyServiceImpl.deleteApply(jid);
		return "redirect:/person/apply/list";
	}
	
	@PostMapping("/info")
	public ResponseEntity<Map<String, Object>> ApplyInfo(String jid, Model model) throws Exception {
		Map<String, Object> response = new HashMap<>();
		try {
	        Integer applyInfo = applyServiceImpl.applyInfo(jid);
	        response.put("applyInfo", applyInfo);
	        
	        Double qualificationAvg = applyServiceImpl.qualificationAvg(jid);
	        if (qualificationAvg == null) {
	        	qualificationAvg = 0.0;
	        }
	        response.put("qualificationAvg", qualificationAvg);
	        
	        Double educationAvg = applyServiceImpl.educationAvg(jid);
	        if(educationAvg == null) {
	        	educationAvg = 0.0;
	        }
	        response.put("educationAvg", educationAvg);
	        
	        Double experienceAvg = applyServiceImpl.experienceAvg(jid);
	        if(experienceAvg == null) {
	        	experienceAvg = 0.0;
	        }
	        response.put("experienceAvg", experienceAvg);
	        
	        return ResponseEntity.ok(response);
	    } catch (Exception e) {
	    	response.put("error", "서버에서 오류 발생: " + e.getMessage());
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
	    }
	}
}
