package google.search;

import nz.co.twoten.driver.google.GoogleResultsPage;
import nz.co.twoten.driver.google.GoogleSearchPage;

import org.concordion.integration.junit4.ConcordionRunner;
import org.junit.runner.RunWith;
import org.openqa.selenium.WebDriver;

import base.DriverFixture;

@RunWith(ConcordionRunner.class)
public class AssuritySearch extends DriverFixture {
	
 	private WebDriver driver = getDriver();

    public String resultFor(String searchProvider, String keywords) {
        GoogleSearchPage searchPage = new GoogleSearchPage(driver); 
		GoogleResultsPage resultsPage = searchPage.searchFor(keywords);
        return resultsPage.getResult();
    }
}