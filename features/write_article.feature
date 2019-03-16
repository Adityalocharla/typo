Feature: Write Articles
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add articles to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully write articles
    Given I am on the new article page
    When I fill in "article_title" with "Foobar"
    And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"


  Scenario: Successfully create new categories
    Given I am on the new categories page
    When I fill in "category_name" with "cucumber test"
    And I fill in "category_keywords" with "cucumber test"
    Then I press "Save"
    Then I should see "Category was successfully saved."

  Scenario: Successfully write articles with categories
    Given I am on the new categories page
    When I fill in "category_name" with "cucumber test"
    And I fill in "category_keywords" with "cucumber test"
    Then I press "Save"
    Then I should see "Category was successfully saved."
    Given I am on the new article page
    When I fill in "article_title" with "cucumber test article"
#    Then the "cucumber test" checkbox within the page should be checked
    And I fill in "article__body_and_extended_editor" with "tested body"
    And I press "Publish"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "cucumber test article"
    When I follow "cucumber test article"
    Then I should see "tested body"