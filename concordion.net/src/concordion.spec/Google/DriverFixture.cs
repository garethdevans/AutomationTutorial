using System;
using OpenQA.Selenium;
using OpenQA.Selenium.Firefox;

namespace Concordion.Spec.Google
{
    public class DriverFixture : IDisposable
    {
        protected readonly IWebDriver WebDriver = new FirefoxDriver();

        public void Dispose()
        {
            // TODO: unsure why this isn't getting called - tb, feb 2012
            WebDriver.Quit();
        }
    }
}