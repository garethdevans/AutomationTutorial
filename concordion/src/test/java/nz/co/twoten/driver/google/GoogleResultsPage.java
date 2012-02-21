/**
 * Code from https://bitbucket.org/twoten/opensourcetesting
 */
package nz.co.twoten.driver.google;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

/**
 * A WebDriver Page Object corresponding to the Google Results Page.
 */
public class GoogleResultsPage {
	
	@FindBy(id = "res") 
	private WebElement resultWrapper;

	@FindBy(className = "l")
	private WebElement firstResultLink;
	
    @FindBy(className = "r")
    private WebElement resultLink;

    private final WebDriver driver;

	/**
	 * Initialises the results page and waits for the page to fully load.
	 * Assumes that the results page is already loading.
	 */
    public GoogleResultsPage(WebDriver driver) {
		this.driver = driver;
        PageFactory.initElements(driver, this);
        waitForFooter();
	}

	/**
	 * Checks whether the specified text occurs in any result on the results page.
	 */
    public boolean resultsContain(String text) {
		List<WebElement> resultsText = resultWrapper.findElements(By.className("s"));
		for (WebElement result : resultsText) {
            if (result.getText().contains(text)) {
                return true;
            }
        }
		return false;
	}

	/**
	 * Returns the text of the topmost result from the results page.
	 */
    public String getTopResultTitle() {
		return firstResultLink.getText();
	}
	
    /**
     * Returns the text of the calculator result from the results page.
     */
    public String getResult() {
        return resultLink.getText();
    }
    
    private void waitForFooter() {
		WebDriverWait wait = new  WebDriverWait(driver, 30);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("foot")));
	}
}