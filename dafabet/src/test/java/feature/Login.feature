Feature: Dafabet Login

  Scenario: Login to Dafabet Entry Page
    Given the player is at Dafabet - Entry site in EN language
    When the player logs in using valid - RMB desktop credentials
    Then the player is logged in successfully