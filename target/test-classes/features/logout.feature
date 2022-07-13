@UPGN-266
Feature: Default

	#As a user, I should be able to log out.
	#
	# 
	#
	#1- User can log out and ends up in login page.
  @UPGN-263
  Scenario Outline: Log out Functionality "log out and ends up in login page" Upgn Fatih
    Given user should go login page
    When User enters  "<username>"  in email box
    And User enters "<password>" in password box
    And User clicks login button to login
    And account name should be displayed
    And User logs out by clicking account name firstly and after log out button
    Then User ends up in login page automatically after click log out button.



    @salesmanager
    Examples: Valid salesmanager credantials
      | username                 | password     |
      | salesmanager6@info.com   | salesmanager |
      | salesmanager7@info.com   | salesmanager |
      | salesmanager8@info.com   | salesmanager |
      | salesmanager9@info.com   | salesmanager |
      | salesmanager10@info.com  | salesmanager |


    @posmanager
    Examples: Valid posmanager credantials
      | username              | password   |
      | posmanager5@info.com  | posmanager |
      | posmanager6@info.com  | posmanager |
      | posmanager7@info.com  | posmanager |
      | posmanager8@info.com  | posmanager |
      | posmanager9@info.com  | posmanager |
      | posmanager10@info.com | posmanager |

	#As a user, I should be able to log out.
	#
	# 
	#2- The user can not go to the home page again by clicking the step back button after successfully logged out.
  @UPGN-264
  Scenario Outline: Log out Functionality "clicking the step back button after logged out" Upgn Fatih
    Given user should go login page
    When User enters  "<username>"  in email box
    And User enters "<password>" in password box
    And User clicks login button to login
    And account name should be displayed
    And User logs out by clicking account name firstly and after log out button
    And User ends up in login page automatically after click log out button.
    And User clicks the step back button
    Then User should not go to the home page again



    @salesmanager
    Examples: Valid salesmanager credantials
      | username                 | password     |
      | salesmanager6@info.com   | salesmanager |
      | salesmanager7@info.com   | salesmanager |
      | salesmanager8@info.com   | salesmanager |
      | salesmanager9@info.com   | salesmanager |
      | salesmanager10@info.com  | salesmanager |


    @posmanager
    Examples: Valid posmanager credantials
      | username              | password   |
      | posmanager5@info.com  | posmanager |
      | posmanager6@info.com  | posmanager |
      | posmanager7@info.com  | posmanager |
      | posmanager8@info.com  | posmanager |
      | posmanager9@info.com  | posmanager |
      | posmanager10@info.com | posmanager |