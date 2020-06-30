Feature: Data.gov.uk
  Tests for "Find open data" and CKAN on data.gov.uk

  Background:
    Given I am testing through the full stack

  @notintegration @notstaging @nottraining
  Scenario: Check home page loads correctly
    Given I am testing "https://data.gov.uk"
    And I force a varnish cache miss
    When I request "/"
    Then I should see "Find open data"

  @notintegration @notstaging @nottraining
  Scenario: Check search works
    Given I am testing "https://data.gov.uk"
    And I force a varnish cache miss
    When I search for "data" in datasets
    Then I should see some dataset results

  @notintegration @notstaging @nottraining
  Scenario: Check RDF API loads
    Given I am testing "https://data.gov.uk"
    And I force a varnish cache miss
    When I request "/dataset/lidar-composite-dtm-2017-1m.rdf"
    Then I should get a 200 status code

  Scenario: Check CKAN loads correctly
    Given I am testing "ckan"
    When I request "/"
    Then I should see "Data publisher"

  @notintegration @notstaging @nottraining
  Scenario: Check datasets sync between CKAN and Find
    Given I am testing "https://ckan.publishing.service.gov.uk"
    When I search for all datasets
    And I save the dataset count
    Given I am testing "https://data.gov.uk"
    And I force a varnish cache miss
    When I search for "" in datasets
    Then I should see a similar dataset count

  @notintegration @notstaging @nottraining
  Scenario: Check that we don't get any s3 CSP errors for organogram previews
    Given I am testing "https://data.gov.uk"
    When I preview an organogram
    Then I should see "View the full organogram"
    And I don't get any s3 CSP errors
