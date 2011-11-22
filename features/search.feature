Feature:
  As a potential Assurity customer
  I want to be able to search for Assurity
  So that I can find company information, Agile services and location

Scenario:
  Given I am using google
  When I search for 'Assurity'
  Then the top result should be 'Assurity - Ensuring Software Health - Welcome'

Scenario:
  Given I am using google
  When I search for 'Assurity'
  Then the results include the text 'Agile'



