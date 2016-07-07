package de.axnx;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Base64;

public class Main {
	
	public static void main(String[] args) throws IOException {
		
		URL url = new URL("http://user:pass@domain.com/url");
		URLConnection urlConnection = url.openConnection();
		
		if (url.getUserInfo() != null) {
			 
			System.out.println("userInfo: " + url.getUserInfo());
			
		    String basicAuth = "Basic " + new String( Base64.getEncoder().encode( url.getUserInfo().getBytes()) );
		    
		    System.out.println("basicAuth: " + basicAuth);
		    urlConnection.setRequestProperty("Authorization", basicAuth);
		}

		//InputStream inputStream = urlConnection.getInputStream();
		
		
	}
}
