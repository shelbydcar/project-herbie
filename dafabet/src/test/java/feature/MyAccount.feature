Feature: Dafabet MyAccount

  Scenario: Access MyAccount
    Given the player is at Dafabet - Entry site in EN language
    And the player clicks the Registration button
    And the Registration page is loaded successfully
    When the player enters valid values with Username in lowercase
      | Password      | Qat456123     |
      | Email Domain  | @yopmail.com  |
      | Area Code     | China         |
      | Mobile Number | 11223344556   |
      | First Name    | Qatest        |
      | Last Name     | Test          |
      | Date of Birth | 01/01/1990    |
      | Currency      | RMB/CNY       |
      | Country       | China         |
    And a new account is successfully created
    And the player clicks the MyAccount button
    Then the MyAccount page is loaded successfully
    And the correct info are displayed
      | Username      |
      | First Name    |
      | Last Name     |
      | Date of Birth |
      | Currency      |
      | Country       |
      | Address       |
      | City          |
      | Postal Code   |

    # Update MyAccount Form
    When the player enters valid values in MyAccount Form
      | Address     | Test Address |
      | Town/City   | Test City    |
      | Postal Code | 1111         |
    And the player saves the MyAccount Form
    Then the player updates the MyAccount Form successfully
    And the correct info are displayed
      | Address       |
      | City          |
      | Postal Code   |