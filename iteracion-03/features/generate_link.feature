Feature: As a speaker i want to generate an event link to share and receive feedback

	Scenario: Successful creation of a link to one event
	  Given the event "talk about something" exists
	  And i am in the "event list" page
	  When i press the "Generate link" button
	  Then i should see "link generated"