/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package artmin.configuration;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

/**
 *
 * @author Wes
 */
public class MvcWebApplicationInitializer 
extends AbstractAnnotationConfigDispatcherServletInitializer{
   
     @Override
   protected Class<?>[] getRootConfigClasses() {
      return new Class[] { WebSecurityConfig.class };
   }

   @Override
   protected Class<?>[] getServletConfigClasses() {
      return null; //cuzz DispatcherServlet??
   }

   @Override
   protected String[] getServletMappings() {
      return new String[] { "/" };
   }
    
}
