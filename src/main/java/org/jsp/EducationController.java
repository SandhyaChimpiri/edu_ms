package org.jsp;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class EducationController {
	
	@Autowired
	private EntityManager em;
	@RequestMapping("/savepage")
	public ModelAndView savePage(ModelAndView mv) {
		mv.setViewName("save.jsp");
		return mv;
	}

	@RequestMapping("/save")
	public ModelAndView saveEducation(ModelAndView mv, @RequestParam String uname, @RequestParam String cname,
			@RequestParam int yop, @RequestParam double cgpa) {
		EntityTransaction et=em.getTransaction();
		et.begin();
		Education edu=em.merge(new Education(0, uname, cname, yop, cgpa));
		et.commit();
		mv.setViewName("success.jsp");
		mv.addObject("id",edu.getId());
		mv.addObject("uname",edu.getUname());
		mv.addObject("cname",edu.getCname());
		
		return findAllEdu();
	}
	
	@RequestMapping("/alledu")
	public ModelAndView findAllEdu() {
		List ul=em.createQuery("from Education").getResultList();
		ModelAndView mv=new ModelAndView();
		mv.setViewName("alledu.jsp");
		mv.addObject("edu",ul);
		return mv;
	}
	@RequestMapping("/updatepage")
	public ModelAndView updatePage(@RequestParam int id) {
		Education education = em.find(Education.class, id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update.jsp");
		mv.addObject("edu", education);

		return mv;

	}
	@RequestMapping("/update")
	public ModelAndView update(@RequestParam int id, @RequestParam String uname, @RequestParam String cname,
			 @RequestParam int yop, @RequestParam double cgpa) {
		
		Education ed = em.find(Education.class, id);
		ed.setCname(cname);
		ed.setUname(uname);
		ed.setYop(yop);
		ed.setCgpa(cgpa);
		
		EntityTransaction et=em.getTransaction();
		et.begin();
		em.merge(ed);
		et.commit();
		
		return findAllEdu();
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteUserById(@RequestParam int id) {
		System.out.println("Delete Method is called");
		System.out.println("id is:" + id);
		Education ed = em.find(Education.class, id);
		if (ed != null) {
			EntityTransaction et = em.getTransaction();
			et.begin();
			em.remove(ed);
			et.commit();
			return findAllEdu();
		}
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index.jsp");
		mv.addObject("msg", "Invalid User id Unable to delete");
		return mv;
	}


}