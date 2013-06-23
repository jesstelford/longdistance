Feature: Login
	In order to view their private content
	Customers should be able to
	Login to their account

	Background:
		Given I am not logged in
		And I have an account

	Scenario: Valid username and password
		When I enter my username
		And I enter the matching password
		Then I should be logged in
		And I should be redirected to "My Account"

	Scenario: Invalid username
		When I enter an invalid username
		And I enter any password
		Then I should not be logged in
		And I should be shown "Invalid Login Details"

	Scenario: Non-matching password
		When I enter my username
		And I enter a non-matching password
		Then I should not be logged in
		And I should be shown "Invalid Login Details"

	Scenario: Redirect URL
		Given I am being redirected to any URL
		When I enter my username
		And I enter the matching password
		Then I should be logged in
		And I should be redirected to the URL
