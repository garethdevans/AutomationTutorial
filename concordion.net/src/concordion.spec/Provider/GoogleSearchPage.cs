/**
 * Code ported from java from https://bitbucket.org/twoten/opensourcetesting
 * todd@goneopen.com 2012
 */
using OpenQA.Selenium;

namespace Concordion.Spec.Provider
{
    public class GoogleSearchPage
    {
        private readonly IWebDriver _webDriver;
        private readonly By _queryBox = By.Name("q");

        public GoogleSearchPage(IWebDriver webDriver)
        {
            _webDriver = webDriver;
            webDriver.Navigate().GoToUrl("http://google.com");
        }

        public GoogleResultsPage SearchFor(string queryString)
        {
            _webDriver.FindElement(_queryBox).SendKeys(queryString);
            return new GoogleResultsPage(_webDriver);
        }
    }
}
