package util;

import java.io.IOException;
import java.util.Properties;

public class PropertyReader {

    public static Properties readProperties() {
        Properties properties = new Properties();
        try {
            properties.load(PropertyReader.class.getClassLoader().getResourceAsStream("/config.properties"));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return properties;
    }
}
