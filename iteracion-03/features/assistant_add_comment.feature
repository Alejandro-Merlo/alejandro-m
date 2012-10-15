Feature: As an assistant i want to discuss my qualification to give more details

	Scenario: Successful sending of a comment
	  Given i am in the "rate event" page
	  When i add the comment "That was ok"
	  And i press the "Send qualification" button
	  Then i should see "comment was sent"