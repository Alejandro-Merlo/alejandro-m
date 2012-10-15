Feature: As a speaker i want to recover the password in case of forgetting it
  Username should exist
  Email should be valid

	Background:
	  Given the username "Alejandro" with email "machodelsur88@gmail.com" exists

	Scenario: Successful recovering of the password
	  Given i am in the "home" page
	  When i press the "Recover password" button
	  Then i am in the "recover pass" page
	  When i enter the username "Alejandro"
	  And i enter the email "machodelsur88@gmail.com"
	  Then i should see "new password sent"

	Scenario: Incorrect email
	  Given i am in the "home" page
	  When i press the "Recover password" button
	  Then i am in the "recover pass" page
	  When i enter the username "Alejandro"
	  And i enter the email "noexiste@shimeil.com"
	  Then i should see "error"

	Scenario: Invalid username
	  Given i am in the "home" page
	  When i press the "Recover password" button
	  Then i am in the "recover pass" page
	  When i enter the username "Daniel"
	  And i enter the email "machodelsur88@gmail.com"
	  Then i should see "username don't exist"