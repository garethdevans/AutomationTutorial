Feature:
Potential Assurity customers need to be able to find company information, services and address details when searching on the internet

Scenario:
  Given I am using google
  When I search for 'Assurity'
  Then the top result should be 'Assurity - Ensuring Software Health - Welcome'

Scenario:
  Given I am using google
  When I search for 'test agile new zealand'
  Then the results include the text 'Assurity'

Scenario:
  Given I am using google
  When I search for 'assurity auckland address'
  Then the results include the text 'Auckland Level 3, Dilworth Building'

Scenario:
  Given I am using google
  When I search for 'assurity wellington address'
  Then the results include the text 'Majestic Centre, 100 Willis Street'

Scenario:
  Given I am using bing
  When I search for 'Assurity'
  Then the results include the text 'Assurity - Ensuring Software Health - Welcome'

Scenario:
  Given I am using bing
  When I search for 'test agile new zealand'
  Then the results include the text 'Assurity'
  
Scenario Outline: Search for adresss by city
  Given I am using google
  When I search for <search_text>
  Then the results include the text <result_text>

  Examples:
    | search_text                      | result_text                              |
    | 'assurity wellington address'    | 'Majestic Centre, 100 Willis Street'     |
    | 'assurity auckland address'      | 'Auckland Level 3, Dilworth Building'    |
  


