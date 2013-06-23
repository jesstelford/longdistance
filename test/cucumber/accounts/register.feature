Feature: Register
	In order for users to use the service
	Customers should be able to
	Register for an account

	Background:
		Given I am not logged in
		And I do not have an account

	Scenario: Register a new account
		When I enter a valid email
		And I enter a valid username
		And I enter a valid password
		Then I should be logged in
		And I should be redirected to "My Account"

	Scenario: Invalid email
		When I enter an invalid email
		And I enter a valid username
		And I enter a valid password
		Then I should not be logged in
		And I should be shown "Invalid Email"

	Scenario: Invalid username
		When I enter a valid email
		And I enter an invalid username
		And I enter a valid password
		Then I should not be logged in
		And I should be shown "Invalid Username"

	Scenario: Invalid password
		When I enter a valid email
		And I enter a valid username
		And I enter an invalid password
		Then I should not be logged in
		And I should be shown "Invalid Password"

	Scenario: Redirect URL
		Given I am being redirected to any URL
		When I enter a valid email
		And I enter a valid username
		And I enter a valid password
		Then I should be logged in
		And I should be redirected to the URL
