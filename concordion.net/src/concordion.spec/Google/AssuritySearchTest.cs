using System;
using Concordion.Integration;
using Concordion.Spec.Provider;

namespace Concordion.Spec.Google
{
    [ConcordionTest]
    public class AssuritySearchTest : DriverFixture
    {

        public String ResultFor(string provider, string keywords)
        {
            var searchPage = new GoogleSearchPage(WebDriver);
            var resultsPage = searchPage.SearchFor(keywords);
            return resultsPage.Results();
        }
    }
}