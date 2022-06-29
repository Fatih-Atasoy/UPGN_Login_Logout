@UPGN-262
Feature: Default

	#As a user, I should be able to log in so that I can land on homepage.
	#
	# 
	#
	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	@UPGN-253
	Scenario Outline: Login Functionality "User should log-in with this valid credentials" Upgn Fatih
		Given user should go login page
		    When User enters  "<username>"  in email box
		    And User enters "<password>" in password box
		    And User clicks login button to login
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
		|salesmanager11@info.com|salesmanager|
		|salesmanager12@info.com|salesmanager|
		|salesmanager13@info.com|salesmanager|
		|salesmanager14@info.com|salesmanager|
		|salesmanager15@info.com|salesmanager|
		|salesmanager16@info.com|salesmanager|
		|salesmanager17@info.com|salesmanager|
		|salesmanager18@info.com|salesmanager|
		|salesmanager19@info.com|salesmanager|
		|salesmanager20@info.com|salesmanager|
		|salesmanager21@info.com|salesmanager|
		|salesmanager22@info.com|salesmanager|
		|salesmanager23@info.com|salesmanager|
		|salesmanager24@info.com|salesmanager|
		|salesmanager25@info.com|salesmanager|
		|salesmanager26@info.com|salesmanager|
		|salesmanager27@info.com|salesmanager|
		|salesmanager28@info.com|salesmanager|
		|salesmanager29@info.com|salesmanager|
		|salesmanager30@info.com|salesmanager|
		|salesmanager31@info.com|salesmanager|
		|salesmanager32@info.com|salesmanager|
		|salesmanager33@info.com|salesmanager|
		|salesmanager34@info.com|salesmanager|
		|salesmanager35@info.com|salesmanager|
		|salesmanager36@info.com|salesmanager|
		|salesmanager37@info.com|salesmanager|
		|salesmanager38@info.com|salesmanager|
		|salesmanager39@info.com|salesmanager|
		|salesmanager40@info.com|salesmanager|
		|salesmanager41@info.com|salesmanager|
		|salesmanager42@info.com|salesmanager|
		|salesmanager43@info.com|salesmanager|
		|salesmanager44@info.com|salesmanager|
		|salesmanager45@info.com|salesmanager|
		|salesmanager46@info.com|salesmanager|
		|salesmanager47@info.com|salesmanager|
		|salesmanager48@info.com|salesmanager|
		|salesmanager49@info.com|salesmanager|
		|salesmanager50@info.com|salesmanager|
		|salesmanager51@info.com|salesmanager|
		|salesmanager52@info.com|salesmanager|
		|salesmanager53@info.com|salesmanager|
		|salesmanager54@info.com|salesmanager|
		|salesmanager55@info.com|salesmanager|
		|salesmanager56@info.com|salesmanager|
		|salesmanager57@info.com|salesmanager|
		|salesmanager58@info.com|salesmanager|
		|salesmanager59@info.com|salesmanager|
		|salesmanager60@info.com|salesmanager|
		|salesmanager61@info.com|salesmanager|
		|salesmanager62@info.com|salesmanager|
		|salesmanager63@info.com|salesmanager|
		|salesmanager64@info.com|salesmanager|
		|salesmanager65@info.com|salesmanager|
		|salesmanager66@info.com|salesmanager|
		|salesmanager67@info.com|salesmanager|
		|salesmanager68@info.com|salesmanager|
		|salesmanager69@info.com|salesmanager|
		|salesmanager70@info.com|salesmanager|
		|salesmanager71@info.com|salesmanager|
		|salesmanager72@info.com|salesmanager|
		|salesmanager73@info.com|salesmanager|
		|salesmanager74@info.com|salesmanager|
		|salesmanager75@info.com|salesmanager|
		|salesmanager76@info.com|salesmanager|
		|salesmanager77@info.com|salesmanager|
		|salesmanager78@info.com|salesmanager|
		|salesmanager79@info.com|salesmanager|
		|salesmanager80@info.com|salesmanager|
		|salesmanager81@info.com|salesmanager|
		|salesmanager82@info.com|salesmanager|
		|salesmanager83@info.com|salesmanager|
		|salesmanager84@info.com|salesmanager|
		|salesmanager85@info.com|salesmanager|
		|salesmanager86@info.com|salesmanager|
		|salesmanager87@info.com|salesmanager|
		|salesmanager88@info.com|salesmanager|
		|salesmanager89@info.com|salesmanager|
		|salesmanager90@info.com|salesmanager|
		|salesmanager91@info.com|salesmanager|
		|salesmanager92@info.com|salesmanager|
		|salesmanager93@info.com|salesmanager|
		|salesmanager94@info.com|salesmanager|
		|salesmanager95@info.com|salesmanager|
		|salesmanager96@info.com|salesmanager|
		|salesmanager97@info.com|salesmanager|
		|salesmanager98@info.com|salesmanager|
		|salesmanager99@info.com|salesmanager|
		|salesmanager100@info.com|salesmanager|
		|salesmanager101@info.com|salesmanager|
		|salesmanager102@info.com|salesmanager|
		|salesmanager103@info.com|salesmanager|
		|salesmanager104@info.com|salesmanager|
		|salesmanager105@info.com|salesmanager|
		
		@posmanager
		Examples: Valid posmanager credantials
		|username|password|
		|posmanager5@info.com|posmanager|
		|posmanager6@info.com|posmanager|
		|posmanager7@info.com|posmanager|
		|posmanager8@info.com|posmanager|
		|posmanager9@info.com|posmanager|
		|posmanager10@info.com|posmanager|
		|posmanager11@info.com|posmanager|
		|posmanager12@info.com|posmanager|
		|posmanager13@info.com|posmanager|
		|posmanager14@info.com|posmanager|
		|posmanager15@info.com|posmanager|
		|posmanager16@info.com|posmanager|
		|posmanager17@info.com|posmanager|
		|posmanager18@info.com|posmanager|
		|posmanager19@info.com|posmanager|
		|posmanager20@info.com|posmanager|
		|posmanager21@info.com|posmanager|
		|posmanager22@info.com|posmanager|
		|posmanager23@info.com|posmanager|
		|posmanager24@info.com|posmanager|
		|posmanager25@info.com|posmanager|
		|posmanager26@info.com|posmanager|
		|posmanager27@info.com|posmanager|
		|posmanager28@info.com|posmanager|
		|posmanager29@info.com|posmanager|
		|posmanager30@info.com|posmanager|
		|posmanager31@info.com|posmanager|
		|posmanager32@info.com|posmanager|
		|posmanager33@info.com|posmanager|
		|posmanager34@info.com|posmanager|
		|posmanager35@info.com|posmanager|
		|posmanager36@info.com|posmanager|
		|posmanager37@info.com|posmanager|
		|posmanager38@info.com|posmanager|
		|posmanager39@info.com|posmanager|
		|posmanager40@info.com|posmanager|
		|posmanager41@info.com|posmanager|
		|posmanager42@info.com|posmanager|
		|posmanager43@info.com|posmanager|
		|posmanager44@info.com|posmanager|
		|posmanager45@info.com|posmanager|
		|posmanager46@info.com|posmanager|
		|posmanager47@info.com|posmanager|
		|posmanager48@info.com|posmanager|
		|posmanager49@info.com|posmanager|
		|posmanager50@info.com|posmanager|
		|posmanager51@info.com|posmanager|
		|posmanager52@info.com|posmanager|
		|posmanager53@info.com|posmanager|
		|posmanager54@info.com|posmanager|
		|posmanager55@info.com|posmanager|
		|posmanager56@info.com|posmanager|
		|posmanager57@info.com|posmanager|
		|posmanager58@info.com|posmanager|
		|posmanager59@info.com|posmanager|
		|posmanager60@info.com|posmanager|
		|posmanager61@info.com|posmanager|
		|posmanager62@info.com|posmanager|
		|posmanager63@info.com|posmanager|
		|posmanager64@info.com|posmanager|
		|posmanager65@info.com|posmanager|
		|posmanager66@info.com|posmanager|
		|posmanager67@info.com|posmanager|
		|posmanager68@info.com|posmanager|
		|posmanager69@info.com|posmanager|
		|posmanager70@info.com|posmanager|
		|posmanager71@info.com|posmanager|
		|posmanager72@info.com|posmanager|
		|posmanager73@info.com|posmanager|
		|posmanager74@info.com|posmanager|
		|posmanager75@info.com|posmanager|
		|posmanager76@info.com|posmanager|
		|posmanager77@info.com|posmanager|
		|posmanager78@info.com|posmanager|
		|posmanager79@info.com|posmanager|
		|posmanager80@info.com|posmanager|
		|posmanager81@info.com|posmanager|
		|posmanager82@info.com|posmanager|
		|posmanager83@info.com|posmanager|
		|posmanager84@info.com|posmanager|
		|posmanager85@info.com|posmanager|
		|posmanager86@info.com|posmanager|
		|posmanager87@info.com|posmanager|
		|posmanager88@info.com|posmanager|
		|posmanager89@info.com|posmanager|
		|posmanager90@info.com|posmanager|
		|posmanager91@info.com|posmanager|
		|posmanager92@info.com|posmanager|
		|posmanager93@info.com|posmanager|
		|posmanager94@info.com|posmanager|
		|posmanager95@info.com|posmanager|
		|posmanager96@info.com|posmanager|
		|posmanager97@info.com|posmanager|
		|posmanager98@info.com|posmanager|
		|posmanager99@info.com|posmanager|
		|posmanager100@info.com|posmanager|
		|posmanager101@info.com|posmanager|
		|posmanager102@info.com|posmanager|
		|posmanager103@info.com|posmanager|
		|posmanager104@info.com|posmanager|
		|posmanager105@info.com|posmanager|
		|posmanager106@info.com|posmanager|
		|posmanager107@info.com|posmanager|
		|posmanager108@info.com|posmanager|
		|posmanager109@info.com|posmanager|
		|posmanager110@info.com|posmanager|
		|posmanager111@info.com|posmanager|
		|posmanager112@info.com|posmanager|
		|posmanager113@info.com|posmanager|
		|posmanager114@info.com|posmanager|
		|posmanager115@info.com|posmanager|
		|posmanager116@info.com|posmanager|
		|posmanager117@info.com|posmanager|
		|posmanager118@info.com|posmanager|
		|posmanager119@info.com|posmanager|
		|posmanager120@info.com|posmanager|
		|posmanager121@info.com|posmanager|
		|posmanager122@info.com|posmanager|
		|posmanager123@info.com|posmanager|
		|posmanager124@info.com|posmanager|
		|posmanager125@info.com|posmanager|
		|posmanager126@info.com|posmanager|
		|posmanager127@info.com|posmanager|
		|posmanager128@info.com|posmanager|
		|posmanager129@info.com|posmanager|
		|posmanager130@info.com|posmanager|
		|posmanager131@info.com|posmanager|
		|posmanager132@info.com|posmanager|
		|posmanager133@info.com|posmanager|
		|posmanager134@info.com|posmanager|
		|posmanager135@info.com|posmanager|
		|posmanager136@info.com|posmanager|
		|posmanager137@info.com|posmanager|
		|posmanager138@info.com|posmanager|
		|posmanager139@info.com|posmanager|
		|posmanager140@info.com|posmanager|
		|posmanager141@info.com|posmanager|
		|posmanager142@info.com|posmanager|
		|posmanager143@info.com|posmanager|
		|posmanager144@info.com|posmanager|
		|posmanager145@info.com|posmanager|
		|posmanager146@info.com|posmanager|
		|posmanager147@info.com|posmanager|
		|posmanager148@info.com|posmanager|
		|posmanager149@info.com|posmanager|
		|posmanager150@info.com|posmanager|
		|posmanager151@info.com|posmanager|
		|posmanager152@info.com|posmanager|
		|posmanager153@info.com|posmanager|
		|posmanager154@info.com|posmanager|
		|posmanager155@info.com|posmanager|	

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
		    Then "Please fill out this field" message should be displayed in email box
		
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