Feature: As a speaker i want to find events to view statistics
  Event should exist

	Scenario: Successful matching of the event
	  Given the event "talk about something" exists
	  And i am in the "event list" page
	  When i enter search field "talk about something"
	  And i press the "Search" button
	  Then i should see "talk about something"



	Scenario: Event not found
	  Given i am in the "event list" page
	  When i enter search field "talk about something"
	  And i press the "Search" button
	  Then i should see "not found"