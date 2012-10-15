Feature: As an assistant i want to rate the event to give feedback to the speaker

	Scenario: Successful rating of an event
	  Given i am in the "rate event" page
	  When i press the button "Rate positive"
	  And i press the button "Send"
	  Then i should see "score was sent"