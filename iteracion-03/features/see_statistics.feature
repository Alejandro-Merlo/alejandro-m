Feature: As a speaker i want to see the event qualifications to have statistics

	Scenario: Succesful access to an event statistics
	  Given the event "talk about something" exists
	  And i am in the "event list" page
	  When i press the "View statistics" button
	  Then i am in the "view statistics" page
	  And i should see "talk about something"