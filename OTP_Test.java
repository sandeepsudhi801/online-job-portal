package dbBeanss;
import java.util.Random;
import java.security.SecureRandom;
import java.io.*;
import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;
import javax.servlet.http.*;
import javax.servlet.*;
import javax.swing.JOptionPane;

import org.apache.commons.httpclient.Credentials;
import org.apache.commons.httpclient.HostConfiguration;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.UsernamePasswordCredentials;
import org.apache.commons.httpclient.auth.AuthScope;
import org.apache.commons.httpclient.methods.PostMethod;

public class OTP_Test {
	public static void main(String[] args) {
		Otpsend();
	}
	 public static  void Otpsend() {
         final  String PROXY_HOST = "202.146.195.253";
         final  int PROXY_PORT = 3128;
        try{ 
                 HttpClient httpclient = new HttpClient();
                 HostConfiguration configs = httpclient.getHostConfiguration();
                  configs.setProxy(PROXY_HOST, PROXY_PORT);      
             PostMethod post1 =new PostMethod(" http://sms.spectrum.net.in/messageapi.asp?username=tech_training&password=traing456&sender=TRAING&mobile=9072675566&message=");
                 String username = "sandeep_jb62";
                 String password = "za3xde";
                 Credentials credentials = new UsernamePasswordCredentials(username,password);
                 AuthScope authScope = new AuthScope(PROXY_HOST, PROXY_PORT);
                  httpclient.getState().setProxyCredentials(authScope, credentials);
                 
                  httpclient.executeMethod(post1);
                  System.out.println("Successs");
                  JOptionPane.showMessageDialog(null, "OTP GENERATED");
          //response.sendRedirect("login.jsp");
                 
                      }catch(Exception e){
                          e.printStackTrace();
                      }
}
}
