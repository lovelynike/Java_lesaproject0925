package com.lesa.www;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.view.RedirectView;

/**
 * Handles requests for the application home page.
 */

@SessionAttributes("loginid")

@Controller
public class HomeController {

	@Autowired
	private hopelecDao hopelecdao;  
	@Autowired
	private memberDao memberdao;     

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		return "lesa_home";
	}
	
	@RequestMapping("/home")  // 0925 add pull  user                    
	public String goHome() {		
		
		return "lesa_home";
	}
	
	// plz add teacher add

	
// ================================ hopelec =======================================================
	@RequestMapping("/hopelec_list")
	public String list(@RequestParam(value = "pageNum", required = false, defaultValue = "1") String strNum,
			Model model) {

		int pageNum = Integer.parseInt(strNum);

		int hopelecPerPage = 10;
		ArrayList<hopelecBean> list = hopelecdao.getList((pageNum - 1) * hopelecPerPage, hopelecPerPage);
		model.addAttribute("list", list);
		int count = hopelecdao.getCount();
		int pageCount = count / hopelecPerPage;
		if (count % hopelecPerPage > 0) {
			pageCount++;
		}
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageNum", pageNum);

		return "hopelec_list";
	}

	@RequestMapping("/go_hopelec_insert")                       
	public String hopelecInsert() {		
		
		return "hopelec_insert";
	}

	
	@RequestMapping("/hopelec_insert") 
	public RedirectView hopelecInsert(hopelecBean bean) {

		hopelecdao.insert(bean);

		RedirectView rv = new RedirectView("hopelec_list");
		rv.setExposeModelAttributes(false);
		return rv;
	}
	
	@RequestMapping("/hopelec_show")  
	public String hopelecShow(Model model, int idx) {
		
		hopelecBean bean = hopelecdao.get(idx);
		hopelecdao.setHit(idx);
		
		model.addAttribute("hopelecShow", bean);
		
		return "hopelec_show";
	}
	
	@RequestMapping("/hopelec_del")  
	public RedirectView hopelecDel(int idx) {
		int result = hopelecdao.delete(idx);
		
		if (result>0){   
			System.out.println("delete succeed");			
		}else {
			System.out.println("delete bad");	
		}
		
		RedirectView rv = new RedirectView("hopelec_list");
		rv.setExposeModelAttributes(false);
		return rv;
	}
	
	@RequestMapping("go_hopelec_update")  
	public String hopelecUpdate(int idx, Model model) {
		hopelecBean bean = hopelecdao.get(idx);	
		
		model.addAttribute("hopelecUpdate", bean);
		
		return "hopelec_update";
	}
	
	@RequestMapping("hopelec_update")
	public RedirectView hopelecUpdate(hopelecBean bean) {

		hopelecdao.update(bean);

		RedirectView rv = new RedirectView("hopelec_list");
		rv.setExposeModelAttributes(false);
		return rv;
	}
	
	
// ================================ member =======================================================
	
	@RequestMapping("/lesa_member_list")
	public String memberlist(@RequestParam(value = "pageNum", required = false, defaultValue = "1") String strNum,
			Model model){
		
		int pageNum = Integer.parseInt(strNum);

		int memberPerPage = 10;
		ArrayList<memberBean> list = memberdao.getList((pageNum - 1) * memberPerPage, memberPerPage);
		model.addAttribute("list", list);
		int count = memberdao.getCount();
		int pageCount = count / memberPerPage;
		if (count % memberPerPage > 0) {
			pageCount++;
		}
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("pageNum", pageNum);
		
		
		return "lesa_member_list";		
	}	
	
	@RequestMapping("/go_member_insert")                        
	public String memberinsert() {
		return "lesa_member_insert";
	}

	@RequestMapping("/member_insert")                          
	public RedirectView memberinsert(memberBean bean) {
		
		memberdao.memberinsert(bean);
		
		RedirectView rv = new RedirectView("lesa_member_list");
		rv.setExposeModelAttributes(false);
		return rv;		
	}
	
	
	@ResponseBody
	@RequestMapping("/check")
	public int check(String id, Model model) {

		return memberdao.check(id);
	}
	
	//======================= login  ================================================
	@RequestMapping("/go_login")                        
	public String login() {
		return "lesa_login";
	}	
	
	@RequestMapping(value = "/member_login", method = RequestMethod.POST)
	public RedirectView memberlogin(memberBean bean, Model model) {
		String id = bean.getId();
		String pw = bean.getPw();
		
		System.out.println("id: "+bean.getId()+"  pw: "+pw);
		
		boolean result = memberdao.memberLogin(id, pw);
		
		if (result){   // result == true
			model.addAttribute("loginid", id);
			
			System.out.println("session good");			
		}else {
			System.out.println("session bad");	
		}		
			
		
		RedirectView rv = new RedirectView("home");
		rv.setExposeModelAttributes(false);
		return rv;
		
	}
	
	@RequestMapping("/lesa_logout")
	public RedirectView memberlogout(SessionStatus sstatus) {
		
		sstatus.setComplete();
		
		RedirectView rv = new RedirectView("home");
		rv.setExposeModelAttributes(false);
		return rv;	
	}
	
	//======================= teacher  ================================================
	
	@RequestMapping("/go_teacher_insert")                        
	public String teacherInsert() {
		return "lesa_teacher_insert";
	}		

}
