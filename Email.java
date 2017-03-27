package dbBeanss;


import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Email 
{
public void sendmail(final String to,String sub,String text) throws AddressException, MessagingException	
{
	final String from="javatraining@spectrum.net.in";
	String host="202.146.192.158";
    Properties properties = System.getProperties();
    properties.setProperty("mail.smtp.auth", "true");
    properties.setProperty("mail.smtp.host", host);
    properties.setProperty("mail.user", from);
   final String pwd= "javaTrning!9";
    Session session = Session.getDefaultInstance(properties, new Authenticator()
    {
    	 protected PasswordAuthentication getPasswordAuthentication()
    	 {
    		  return new PasswordAuthentication(from, pwd);  
    	 }
    }
    );
    

    MimeMessage message = new MimeMessage(session);
    message.setFrom(new InternetAddress(from));
    message.addRecipient(Message.RecipientType.TO, new InternetAddress(
            to));
    message.setSubject(sub);

  
    message.setText(text);
    Transport.send(message);
    System.out.println("Sent message successfully....");
    
    
}

}
