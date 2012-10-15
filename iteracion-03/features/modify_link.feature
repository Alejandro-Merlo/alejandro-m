Feature: As a speaker i want to modify the link to make it more readable

	Scenario: successful modification of an event link
	  Given the event "talk about something" with name link "sarasa454545" exists
	  And i am in the "event list" page
	  When i press the "Edit link" button
	  Then i should see "enter new name link"
	  When i enter name "talk-01"
	  And i press the "Ok" button
	  Then i should see "link modified"