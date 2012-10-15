Feature: As a speaker i want to login in order to use the application

	Background:
	  Given the username "Alejandro" with password "abc1234" exists

	Scenario: Successful login into the site
	  Given i am in the "home" page
	  And i enter username "Alejandro"
	  And i enter password "abc1234"
	  When i press the "Login" button
	  Then i should see "Welcome"


	Scenario: Invalid username. 
	  Given i am in the "home" page
	  And i enter username "Daniel"
	  And i enter password "abc1234"
	  When i press the "Login" button
	  Then i should see "Failed"


	Scenario: Incorrect password
	  Given i am in the "home" page
	  And i enter username "Alejandro"
	  And i enter password "no_me_la_se"
	  When i press the "Login" button
	  Then i should see "Failed"