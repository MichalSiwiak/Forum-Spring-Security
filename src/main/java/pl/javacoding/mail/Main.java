package pl.javacoding.mail;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;

public class Main {

    public static void main(String[] args) throws IOException {
        //URL url = new URL("https://youtu.be/_PkwrR3dIt4");
        //URL url = new URL("  https://www.youtube.com/watch?v=_PkwrR3dIt4&feature=youtu.be");
        URL url = new URL("https://www.youtube.com/embed/_PkwrR3dIt4");

        HttpURLConnection connection = (HttpURLConnection)  url.openConnection();
        connection.setRequestMethod("HEAD");
        connection.connect();
        String contentType = connection.getContentType();
        System.out.println(contentType);
    }
}
