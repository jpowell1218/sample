Feature: Blog Admin
  In order to manage my blog
  As an admin
  I want to create/edit/publish/delete blog posts

  Background:
    Given a logged in admin
    And I am on the main admin page

  Scenario: Adding new blog posts
    When I add a new blog post
    Then it should not be published
    And I should not see it on the home page
    When I publish the blog post
    Then I should see it on the home page

  Scenario: Deleting comments
    Given a blog post with 5 comments
    When I view admin page for the blog post
    And I delete the first comment
    Then I should not see the comment
