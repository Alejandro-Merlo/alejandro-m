Feature: As a speaker i want to see global statistics
  One event should exist at least

	Scenario: Successful access to statistics
	  Given the event "talk about something" exists
	  And i am in the "event list" page
	  When i press the "View global statistics" button
	  Then i should see "global statistics"
	  And i should see "talk about something"

	Scenario: There is no created events
	  Given i am in the "event list" page
	  When i press the "View global stats" button
	  Then i should see "error"