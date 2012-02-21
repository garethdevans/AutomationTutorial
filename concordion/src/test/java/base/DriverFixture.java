package base;

import org.junit.After;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class DriverFixture {
    
    private WebDriver driver;

	protected WebDriver getDriver() {
        driver = new FirefoxDriver();
        return driver;
    }
    
    @After
    public void close() {
    	driver.close();
    }
}
