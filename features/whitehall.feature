Feature: Whitehall

  Scenario: Visiting whitehall
    Given I am testing "whitehall"
    Then I should be able to visit:
      | Path                          |
      | /government/                  |
      | /government/news-and-speeches |
      | /government/policy-topics     |
      | /government/publications      |
      | /government/consultations     |
      | /government/ministers         |
      | /government/organisations     |
      | /government/world             |
      | /government/search?q=foo      |
      | /government/BIS               |