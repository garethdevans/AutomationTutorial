This proof of concept demonstrates using cucumber to do searches.

Also, you may want to look at [this tutorial](http://watir.com/2011/01/22/simple-cucumber-watir-page-object-pattern-framework/)
and [this blog series](http://www.cheezyworld.com/2010/12/16/ui-tests-putting-it-all-together/)

Installation
============

This code is written in ruby and tested on 1.8.7

    $ ruby -v
    ruby 1.8.7 (2010-01-10 patchlevel 249) [universal-darwin10.0]

You will also require the installation of the following GEMS via the commands:

    gem install rake
    gem install rspec
    gem install watir-webdriver
    gem install cucumber
  
    $ gem list
  
    *** LOCAL GEMS ***
  
    childprocess (0.3.1, 0.1.9)
    cucumber (1.1.8, 0.3.97, 0.2.3, 0.1.12, 0.1.10)
    multi_json (1.0.4)
    rake (0.8.7, 0.8.3)
    rspec (2.6.0, 1.3.0, 1.2.8, 1.2.2, 1.1.11, 1.1.8, 0.5.15)
    rspec-core (2.6.3)
    rspec-expectations (2.6.0)
    rspec-mocks (2.6.0)
    rspec_generator (0.5.15)
    rubygems-update (1.3.6, 1.3.5, 1.3.1, 1.3.0)
    selenium-webdriver (2.19.0, 0.2.0)
    term-ansicolor (1.0.7, 1.0.4, 1.0.3)
    watir-webdriver (0.5.3)

Test using Rake
===============

  Ensure that you have rake installed and then to see the tests available, from the root directory run rake with the option to show tasks

    $ rake -T
    
    rake default  # Run Cucumber features
    rake prod     # Run Cucumber features

Sample run
===========

    $ rake
    
    (in /Users/todd/Documents/src/AutomationTutorial)
    /System/Library/Frameworks/Ruby.framework/Versions/1.8/usr/bin/ruby -I "/Library/Ruby/Gems/1.8/gems/cucumber-1.1.8/lib:lib" "/Library/Ruby/Gems/1.8/gems/cucumber-1.1.8/bin/cucumber"  --profile default
    Using the default profile...
    Code:
      * features/support/env.rb
      * config/config_common.rb
      * config/config_dev.rb
      * features/pages/bing_search_page.rb
      * features/pages/google_search_page.rb
      * features/step_definitions/search_steps.rb
    
    Features:
      * features/search.feature
    Parsing feature files took 0m0.047s
    
    Feature: 
      Potential Assurity customers need to be able to find company information, services and address details when searching on the internet
    
    Scenario:                                                                       # features/search.feature:4
      Given I am using google                                                       # features/step_definitions/search_steps.rb:1
      When I search for 'Assurity'                                                  # features/step_definitions/search_steps.rb:5
      Then the top result should be 'Assurity - Ensuring Software Health - Welcome' # features/step_definitions/search_steps.rb:10
  
    Scenario:                                      # features/search.feature:9
      Given I am using google                      # features/step_definitions/search_steps.rb:1
      When I search for 'test agile new zealand'   # features/step_definitions/search_steps.rb:5
      Then the results include the text 'Assurity' # features/step_definitions/search_steps.rb:14
    
    2 scenarios (1 pending, 1 passed)
    6 steps (1 pending, 5 passed)
    0m8.368s


