Feature: As the speaker i want to update an event details in case of it changes
  Event should not be rated

	Scenario: Successful updating of an event details
	  Given the event "talk about something" exists 
	  And i am in the "event list" page
	  When i press the "Edit event" button
	  Then i am in the "edit event" page
	  When i enter name "talk about everything"
	  And i enter date "20121014"
	  Then i should see "event details updated"


	Scenario: Event already rated
	  Given the event "talk about something" with a positive qualification exists 
	  And i am in the "event list" page
	  When i press the "Edit event" button
	  Then i should see "cannot edit this event"