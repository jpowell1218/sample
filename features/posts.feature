Feature: Blog Homepage
  In order to let readers read my blog
  As an anonymous visitor
  I want to read blog posts

  Background:
    Given an anonymous visitor

  Scenario: Viewing blog posts on the home page
    Given 9 published blog posts
    And 3 unpublished blog posts
    And I am on the home page
    Then I should see 5 blog posts
    When I go to the second page
    Then I should see 4 blog posts

  Scenario: Viewing blog post comments
    Given a blog post with 1 comment
    When I view the blog post
    Then I shuold see the blog post content
    And I should see the blog post comments
