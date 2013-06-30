Feature: Open modal to appointments to your calendar
	To allow users to track their appointments
	As a Customer
	I should be able to add appointments to my calendar

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
		Given I am viewing an hour-by-hour calendar
		 When I click a time
		  And there are no appointments on that time
		 Then I should see the "add appointment" modal
		  And The date should be set as the date viewed
		  And The start time should be set as the time clicked

	Scenario: Click and drag time
		Given I am viewing an hour-by-hour calendar
		 When I click and drag from a start time to an end time
		  And there are no appointments on that start time
		 Then I should see the "add appointment" modal
		  And The date should be set as the date viewed
		  And The start time should be set as the time clicked
		  And The end time should be set as the time dragged to

	Scenario: Edit appointment
		# on date

	Scenario: Edit appointment at time
		# on time
