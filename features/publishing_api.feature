@local-network @app-publishing-api
Feature: Publishing API
  Scenario: Healthcheck
    When I request a healthcheck from the Publishing API
    Then I receive a healthy response

  Scenario: Getting a content item
    When I request the homepage from the Publishing API
    Then I receive a payload with the content

  Scenario: Getting content links
    When I request homepage links from the Publishing API
    Then I receive a payload with the expanded links

  Scenario: Getting linkables
    When I request organisation linkables from the Publishing API
    Then I receive a payload with all the organisations
