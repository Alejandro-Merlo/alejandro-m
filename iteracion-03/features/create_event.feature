Feature: As a speaker i want to create an event in order to receive feedback
  Event name should be unique

	Scenario: Successful creation of an event
	  Given i am in the "create event" page
	  And i enter name "talk about something"
      And i enter date "20121013"
	  When i press the "Create event" button
	  Then i should see "event created"
      When i press the "Ok" button
	  Then i am in the "event list" page
      And i should see "talk about something"


	Scenario: Repeated name
      Given the event "talk about something" exists
      And i am in the "create event" page
	  And i enter name "talk about something"
	  And i enter date "20121013"
	  When i press the "Create event" button
	  Then i should see "error"