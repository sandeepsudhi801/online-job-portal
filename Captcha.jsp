<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.Font"%>
<%@page import="java.awt.GradientPaint"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.awt.RenderingHints"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.util.Random"%>
<%@page import="javax.imageio.ImageIO"%>
<%@ page trimDirectiveWhitespaces="true" %>

</head>
<body>
<%!
    public static String getRandomNumber(int length) {

        String chars = "w.s2sg!ateway.c$omabc^defghjijkmnpqrstuvw#xyzABCDEFGHJKL%MNPQRSTUVWXYZ12*3456789";
        Random random = new Random();

        char[] buf = new char[length];

        for (int i = 0; i < length; i++) {
        buf[i] = chars.charAt(random.nextInt(chars.length()));
        }

        return new String(buf);

        }
    %>
<%
try
{
final int width = 200;
final int height = 50;

char data[][] = new char[1][];
data[0] = getRandomNumber(8).toCharArray();

final BufferedImage bufferedImage = new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);

final Graphics2D g2d = bufferedImage.createGraphics();

final Font font = new Font("SansSerif",1,17);
Color background = new Color(204,204,204);
RenderingHints renderingHints = new RenderingHints(RenderingHints.KEY_ANTIALIASING,RenderingHints.VALUE_ANTIALIAS_ON);

renderingHints.put(RenderingHints.KEY_RENDERING,RenderingHints.VALUE_RENDER_QUALITY);

g2d.setRenderingHints(renderingHints);
g2d.setColor(background);

g2d.fillRect(0,0,width,height);
g2d.setFont(font);
g2d.setColor(new Color(0, 100, 0));

final GradientPaint gradientPaint = new GradientPaint(0, 0, Color.white, 0, height / 2,Color.white, true);

g2d.setPaint(gradientPaint);
g2d.fillRect(0, 0, width, height);

g2d.setColor(new Color(255, 155, 0));
Random random = new Random();

final String captcha = String.copyValueOf(data[0]);
request.getSession().setAttribute("key", captcha);

int xCordinate = 0;
int yCordinate = 0;

for (int i = 0; i < data[0].length; i++) {
xCordinate += 10 + (Math.abs(random.nextInt()) % 15);
if (xCordinate >= width - 5) {
xCordinate = 0;
}
yCordinate = 20 + Math.abs(random.nextInt()) % 20;
g2d.drawChars(data[0], i, 1, xCordinate, yCordinate);
}

g2d.dispose();

response.setContentType("image/jpeg");
final OutputStream outputStream = response.getOutputStream();
ImageIO.write(bufferedImage, "jpeg", outputStream);
outputStream.close();

}
catch(Exception e)
{
    
}
%> 

</body>
</html>