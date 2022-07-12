/**
 * An apex page controller that exposes the site forgot password functionality
 */
public with sharing class ForgotPasswordController {
    public String username {get; set;}   
       
    // public ForgotPasswordController() {}
	
  	public PageReference forgotPassword() {
  		boolean success = Site.forgotPassword(username);
  		PageReference rf = Page.ForgotPasswordConfirm;
  		rf.setRedirect(true);
  		
  		if (success) {  
			System.debug(rf);
			System.debug('i changed variable');			
  			return rf;
  		}
  		return null;
  	}
}