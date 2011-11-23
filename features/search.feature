Feature:
Potential Assurity customers need to be able to find company information, services and address details when searching on the internet

Scenario:
  Given I am using google
  When I search for 'Assurity'
  Then the top result should be 'Assurity - Ensuring Software Health - Welcome'

Scenario:
  Given I am using google
  When I search for 'testing software new zealand'
  Then the results include the text 'Assurity'


