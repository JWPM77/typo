Feature: Edit Categories
  As an author
  In order to organize my posts
  I want to be able to edit available categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel
    
  Scenario: Visit the categories page
    Given I am on the new categories page
    Then I should see "Name"
    And I should see "Keywords"
    And I should see "Permalink"
    And I should see "Description"
    
  Scenario: Create a new category
    Given I am on the new categories page
    When I fill in "category_name" with "Best Artists of All Time"
    And I fill in "category_keywords" with "Iggy, Kesha, Lizzo"
    And I fill in "category_description" with "Those who make like a little bit more worth while"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Best Artists of All Time"
    
  Scenario: Edit an existing category
    Given I am on the new categories page
    And I should see "General"
    When I follow "General"
    Then the "category_name" field should contain "General"
    When I fill in "category_name" with "Specific"
    And I press "Save"
    Then I should be on the new categories page
    And I should see "Specific"