Feature: search

  Scenario: Going to Opencart and search an item
    Given I open firefox browser
    When I type http://demo.opencart.com/ and press enter
    Then I can see page loaded with title "Your Store"
    And I type "Iphone" in search box And I click search button
    Then I can see search results with title "Search - Iphone"
    And I can see the search should not take more than 3 second
    Then I quit browser

  Scenario: Checking invalid search
   Given I open firefox browser
    When I type http://demo.opencart.com/ and press enter
    Then I can see page loaded with title "Your Store"
    And I type "invalid check to prove tests" in search box And I click search button
    Then I can see invalid search title with "Search - invalid check to prove tests" and message "There is no product that matches the search criteria."
    And I can see the search should not take more than 250 second
    Then I quit browser