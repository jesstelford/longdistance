Feature: Open modal to appointments to your calendar
	To allow users to view details of their appointments
	As a Customer
	I should be able to open a modal showing the details

	Background:
		Given I am logged in
		  And I am on the "Calendar" page

	Scenario: Add on date
		Given I am viewing a month-by-month calendar
		 When I click a date
		  And there are no appointments on that date
		 Then I should see the "add appointment" modal
		  And The date should be set as the date clicked

	Scenario: Add at time
		Given I am viewing a day-by-day calendar
		 When I click a time
		  And there are no appointments on that time
		 Then I should see the "add appointment" modal
		  And The date should be set as the date viewed
		  And The start time should be set as the time clicked

	Scenario: Click and drag time
		Given I am viewing a day-by-day calendar
		 When I click and drag from a start time to an end time
		  And there are no appointments on that start time
		 Then I should see the "add appointment" modal
		  And The date should be set as the date viewed
		  And The start time should be set as the time clicked
		  And The end time should be set as the time dragged to

	Scenario: Edit appointment
		Given I am viewing a month-by-month calendar
		  And there is an appointment on a date
		 When I click that appointment
		 Then I should see the "edit appointment" modal
		  And The details should be set to that appointment

	Scenario: Edit appointment at time
		Given I am viewing a day-by-day calendar
		  And there is an appointment at a time
		 When I click that appointment
		 Then I should see the "edit appointment" modal
		  And The details should be set to that appointment
