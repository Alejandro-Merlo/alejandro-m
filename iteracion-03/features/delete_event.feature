Feature: As a speaker i want to delete events to take out them from the system

	Scenario: Successful removal of one event
	  Given the event "talk about something" exists
	  And i am in the "event list" page
	  When i press the "Delete" button
	  Then i should see "event deleted"