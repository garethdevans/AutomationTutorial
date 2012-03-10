/**
 * Code ported from java from https://bitbucket.org/twoten/opensourcetesting
 * todd@goneopen.com 2012
 */

using System;
using System.Linq;
using OpenQA.Selenium;
using OpenQA.Selenium.Support.UI;

namespace Concordion.Spec.Provider
{
    public class GoogleResultsPage
    {
        private readonly By _results = By.Id("res");
        private readonly By _headings = By.Id("s");
        private readonly By _footer = By.Id("foot");
        private readonly By _links = By.ClassName("r");

        private readonly IWebDriver _webDriver;
 
        public GoogleResultsPage(IWebDriver webDriver)
        {
            _webDriver = webDriver;
            waitForFooter();
        }

        public bool ResultsContain(string text)
        {
            var resultsText = _webDriver.FindElement(_results).FindElements(_headings);
            return resultsText.Any(result => result.Text.Contains(text));
        }

        public string Results()
        {
            return _webDriver.FindElement(_links).Text;
        }

        private void waitForFooter()
        {
            var wait = new WebDriverWait(_webDriver, TimeSpan.FromSeconds(30));
            wait.Until(ExpectedConditions.ElementIsVisible(_footer));
        }
    }
}
