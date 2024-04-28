package com.Customer_data.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Customer_data.Entity.Customer;
import com.Customer_data.Service.CustomerService;



@Controller
public class CustomerController {
	
	
	@Autowired
	private CustomerService customerService;
	
	
	
	
	
	@GetMapping("/viewCustomerList")
	public String viewAllCustomerList(Model model, @ModelAttribute("message") String message) {
		model.addAttribute("list", customerService.getAllCustomerList());
		model.addAttribute("message", message);

		return "viewCustomerList";
	}
	
	/*
	 * @GetMapping("/updateCustomerList/{id}") public String
	 * updateToDoStatus(@PathVariable Long id, RedirectAttributes
	 * redirectAttributes) { if (customerService.updateCustomerList(id)) {
	 * redirectAttributes.addFlashAttribute("message", "Update Success"); return
	 * "redirect:/viewCustomerList"; }
	 * redirectAttributes.addFlashAttribute("message", "Update Failure"); return
	 * "redirect:/viewCustomerList"; }
	 */
		
		@GetMapping("/addCustomerList")
		public String addToDoItem(Model model) {
			
			model.addAttribute("customer", new Customer());

			return "addCustomerList";
		}
		@PostMapping("/saveCustomerList")
		public String saveToDoItem(Customer customer, RedirectAttributes redirectAttributes) {
			if(customerService.saveOrUpdateCustomerList(customer)) {
				redirectAttributes.addFlashAttribute("message", "Save Success");
				return "redirect:/viewCustomerList";
			}

			redirectAttributes.addFlashAttribute("message", "Save Failure");
			return "redirect:/addCustomerList";
		}

		@GetMapping("/editCustomerList/{id}")
		public String editCustomerList(@PathVariable Long id, Model model) {
			model.addAttribute("customer", customerService.getCustomerById(id));

			return "editCustomerList";
		}
		@PostMapping("/editSaveCustomerList")
		public String editSaveToDoItem(Customer customer, RedirectAttributes redirectAttributes) {
			if(customerService.saveOrUpdateCustomerList(customer)) {
				redirectAttributes.addFlashAttribute("message", "Edit Success");
				return "redirect:/viewCustomerList";
			}

			redirectAttributes.addFlashAttribute("message", "Edit Failure");
			return "redirect:/editCustomerList/" + customer.getId();
		}

		@GetMapping("/deleteCustomerList/{id}")
		public String deleteCustomerList(@PathVariable Long id, RedirectAttributes redirectAttributes) {
			if (customerService.deleteCustomerList(id)) {
				redirectAttributes.addFlashAttribute("message", "Delete Success");
				return "redirect:/viewCustomerList";
			}

			redirectAttributes.addFlashAttribute("message", "Delete Failure");
			return "redirect:/viewCustomerList";
		}
		
}
