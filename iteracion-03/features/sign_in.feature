Feature: As a speaker i want to sign in to login
  Username should be unique

	Scenario: Successful registration at the site
	  Given i am in the "home" page
	  When i press the "Sign in" button
	  Then i am in the "registration" page
	  When i enter the username "Alejandro"
	  And i enter the password "abc1234"
	  And i enter the email "machodelsur88@gmail.com"
	  When i press the "Register" button
	  Then i should see "account created"


	Scenario: Existent username
	  Given the username "Alejandro" exists
	  And i am in the "home" page
	  When i press the "Sign in" button
	  Then i am in the "registration" page
	  When i enter the username "Alejandro"
	  And i enter the password "abc1234"
	  And i enter the email "machodelsur88@gmail.com"
	  When i press the "Register" button
	  Then i should see "username already exists"