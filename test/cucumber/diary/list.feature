Feature: Show a list of diary entries
	To encourage increased time spent on the site
	As a Customer
	I should be able to see a list of diary entries

	Background:
		Given I am logged in
		  And I am on the "Diary" page

	Scenario: View full first entry
		Given I have at least 1 diary entry
		Then I should see the entire entry 1

	Scenario: Partial, Expandable following entries
		Given I have 2 diary entries
		 Then I should see only the first paragraph for entry 2
		  And I should see a "more" button for entry 2
		 When I click "more" on entry 2
		 Then I should see the entire entry 2

	Scenario: Infinite scroll
		Given I have 25 entries
		Then I should see 10 entries
		When I scroll to the last entry
		Then I should see 20 entries

	Scenario: No more infinite scroll entries
		Given I have 7 entries
		When I scroll to the last entry
		Then I should see 7 entries
