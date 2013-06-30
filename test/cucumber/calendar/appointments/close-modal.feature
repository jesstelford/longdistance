Feature: Closing Modal popup for adding calendar events
	To allow users to track their appointments
	As a Customer
	I should be able to add appointments to my calendar

	Background:
		Given I am logged in
		  And I am on the "Calendar" page
		  And I am entering an appointment
		 Then I should see the "add appointment" modal

	Scenario: Closing modal by clicking outside with no details
		Given I have not entered any details
		When I click outside the modal
		Then the modal should close

	Scenario: Closing modal by clicking "Cancel"
		Given I have not entered any details
		When I click "Cancel"
		Then the modal should close

	Scenario: Confirmation when closing modal by clicking outside with details
		Given I have entered some details
		When I click outside the modal
		Then I should be prompted "Are you sure?"
		When I click "yes"
		Then the modal should close

	Scenario: Cancel closing modal by clicking outside with details
		Given I have entered some details
		When I click outside the modal
		Then I should be prompted "Are you sure?"
		When I click "no"
		Then the modal should not close

	Scenario: Confirmation when closing modal by clicking "Cancel" with details
		Given I have entered some details
		When I click "Cancel"
		Then I should be prompted "Are you sure?"
		When I click "yes"
		Then the modal should close

	Scenario: Cancel closing modal by clicking "Cancel" with details
		Given I have entered some details
		When I click "Cancel"
		Then I should be prompted "Are you sure?"
		When I click "no"
		Then the modal should not close

	Scenario: Reopening modal on same date should be blank
		Given I have entered some details
		When I close the modal
		And I add the same appointment
		Then the modal fields should be defaults

	Scenario: Reopening modal on different date should be blank
		Given I have entered some details
		When I close the modal
		And I add a different appointment
		Then the modal fields should be defaults
