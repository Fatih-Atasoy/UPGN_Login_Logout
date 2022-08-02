@UPGN-262  @smoke
Feature: Default

	#As a user, I should be able to log in so that I can land on homepage.
	#
	# 
	#
	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)



  @UPGN-253
  Scenario: Login Functionality "User should log-in with this valid credentials" Upgn Fatih
    When User login, enters  username and password from excel in email box


	#As a user, I should be able to log in so that I can land on homepage.
	#
	# 
	#
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password) credentials
  @UPGN-254
  Scenario Outline: Login Functionality "log-in by valid email-invalid password" Upgn Fatih
    Given user should go login page
    When User enters  "<valid username>" username credentials in email box
    And User enters "<invalid password>" password credentials in password box
    And User clicks login button to login
    Then error message should be displayed

    Examples:
      | valid username           | invalid password |
      | salesmanager11@info.com  | sales.manager    |
      | salesmanager11@info.com  | sales manager    |
      | salesmanager101@info.com | sales_manager    |
      | salesmanager71@info.com  | posmanager       |
      | posmanager112@info.com | pos.manager      |
      | posmanager66@info.com  | pos manager      |
      | posmanager43@info.com  | poss_manager     |
      | posmanager29@info.com  | salesmanager     |

	#As a user, I should be able to log in so that I can land on homepage.
	#
	# 
	#
	#2-"Wrong login/password" should be displayed for invalid (invalid username-valid password) credentials
  @UPGN-257
  Scenario Outline: Login Functionality "log-in by invalid email-valid password" Upgn Fatih
    Given user should go login page
    When User enters  "<invalid username>" username credentials in email box
    And User enters "<valid password>" password credentials in password box
    And User clicks login button to login
    Then error message should be displayed

    Examples:
      | invalid username           | valid password |
      | salesmanager@info.com  | salesmanager    |
      | salesmanager1@info.com  | salesmanager    |
      | salesmanager106@info.com | salesmanager    |
      | salesmanager107@info.com | salesmanager    |
      | salesmanager108@info.com | salesmanager    |
      | salesmanager109@info.com | salesmanager    |
      | salesmanager110@info.com | salesmanager    |
      | salesmanager111@info.com | salesmanager    |
      | posmanager@info.com  | salesmanager       |
      | posmanager@info.com | posmanager      |
      | posmanager4@info.com  | posmanager      |
      | posmanager156@info.com  | posmanager    |
      | salesmanager@info.com  | posmanager    |

	#As a user, I should be able to log in so that I can land on homepage.
	#
	# 
	#
	#3- "Please fill out this field" message should be displayed if the password or username is empty
  @UPGN-258
  Scenario Outline: Login Functionality "log-in without any data in email" Upgn Fatih
    Given user should go login page
    When User enters "<valid password>" password credentials in password box
    And User clicks login button to login
    Then "Lütfen bu alanı doldurun." message should be displayed in email box

    Examples:
      | valid password |
      | salesmanager    |
      | posmanager    |

	#As a user, I should be able to log in so that I can land on homepage.
	#
	# 
	#
	#4-User land on the ‘reset password’ page after clicking on the "Reset password" link
  @UPGN-259
  Scenario: Login Functionality click "Reset password" link Fatih
    Given user should go login page
    When User should click Reset password link.
    Then Reset password page should be opened in current window

	#As a user, I should be able to log in so that I can land on homepage.
	#
	# 
	#
	#5- User should see the password in bullet signs by default
	#
	# 
  @UPGN-260
  Scenario Outline: Login Functionality "See the password in bullet signs by default" Upgn Fatih
    Given user should go login page
    When Users enter "<password>" password in password box
    Then User should see the entered password in bullet signs by default
    Examples:
      | password |
      | salesmanager    |
      | posmanager    |

	#As a user, I should be able to log in so that I can land on homepage.
	#
	# 
	#
	#Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
  @UPGN-261
  Scenario Outline: Login Functionality "login with enter keyword by valid email and password" Upgn Fatih
    Given user should go login page
    When User enters  "<username>"  in email box
    And User enters "<password>" in password box
    And User uses ENTER key to login
    Then account name should be displayed

    @salesmanager
    Examples: Valid salesmanager credantials
      |username|password|
      |salesmanager5@info.com|salesmanager|
      |salesmanager6@info.com|salesmanager|
      |salesmanager7@info.com|salesmanager|
      |salesmanager8@info.com|salesmanager|
      |salesmanager9@info.com|salesmanager|
      |salesmanager10@info.com|salesmanager|


    @posmanager
    Examples: Valid posmanager credantials
      |username|password|
      |posmanager5@info.com|posmanager|
      |posmanager6@info.com|posmanager|
      |posmanager7@info.com|posmanager|
      |posmanager8@info.com|posmanager|
      |posmanager9@info.com|posmanager|
      |posmanager10@info.com|posmanager|
