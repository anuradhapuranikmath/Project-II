package com.collab.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.collab.model.User;
import com.collab.service.UserService;

@Controller
public class UserController 
{
	private UserService userService;
	
	private Path path;
	
	//@Autowired
	//private EmailService emailService;
	
	@Autowired(required = true)
	@Qualifier(value = "userService")
	public void setUserService(UserService ps) {
		this.userService = ps;
	}
	
//	@RequestMapping("/login")
//	public ModelAndView login() {
//		ModelAndView model = new ModelAndView("login");
//		return model;
//	}                                                                                                                                                                                                                                                                                                                      
	
	@RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
            required = false) String logout, Model model) {
        if (error!=null) {
        	System.out.println("Error.....");
            model.addAttribute("error", "...Invalid username and password");
        }
        	
        if(logout!=null) {
        	System.out.println("Logout called.....");
            model.addAttribute("msg", "...You have been logged out");
        }

        return "login";
    }
	
	@RequestMapping("/register")
	public ModelAndView index(Model m) {
		m.addAttribute("user", new User());
		ModelAndView model = new ModelAndView("register");
		return model;
	}
	
	@RequestMapping(value = "/register/add",method=RequestMethod.POST)
	public String addUser(Model model,@Valid @ModelAttribute("user") User u, BindingResult result, HttpServletRequest request) {

		
			
		
		byte[] bytes;
		if (!u.getProfilePicture().isEmpty()) {

			try {
				
				bytes = u.getProfilePicture().getBytes();
				u.setEnabled(true);
				u.setRole("ROLE_USER");
				userService.addUser(u);
				System.out.println("Data Inserted");
				
				//String path = request.getSession().getServletContext().getRealPath("/resources/img/" + u.getUserId() + ".jpg");
				
				

		       MultipartFile userImage = u.getProfilePicture();
		        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\img\\"+u.getUserId()+".jpg");
				
		        if (userImage != null && !userImage.isEmpty()) {
		            try {
		            	userImage.transferTo(new File(path.toString()));
		            } catch (Exception e) {
		                e.printStackTrace();
		                throw new RuntimeException("item image saving failed.", e);
		            }
		        }

				
				
//				File f = new File(path);
//				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
//				bs.write(bytes);
//				bs.close();
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		return "redirect:/";
	}
}
