Feature: Mention people in a diary entry
	To add context and encourage user retention
	As a customer
	I should be able to create hyperlinked mentions of people I know

	Background:
		Given I am logged in
		  And I am on the "Diary" page
		  And I am typing in the textbox

	Scenario: Show people selection popup
		When I type "@"
		 And I wait for 300ms
		Then I should see a list of all my People

	Scenario: Show filtered list of people
		Given I know people beinging with "B"
		 When I type "@B"
		 Then I should see a list of my People begining with "B"

	Scenario: Show filtered list of specific people
		Given I know a person "Bill Paxton"
		 When I type "@B"
		 Then I should see a list of my People containing "Bill Paxton"

	Scenario: Hover over person to see their name added
		Given I know a person "Bill Paxton"
		 When I type "@B"
		  And I hover over "Bill Paxton"
		 Then I should see "@Bill Paxton" inserted into the textbox
		 When I hover away from "Bill Paxton"
		 Then I should not see "@Bill Paxton" inserted into the textbox

	Scenario: Click person to add name
		Given I know a person "Bill Paxton"
		 When I type "@B"
		  And I click "Bill Paxton"
		 Then I should see "@Bill Paxton" inserted into the textbox
		 When I hover away from "Bill Paxton"
		 Then I should see "@Bill Paxton" inserted into the textbox

	Scenario: Mentioned person is a hyperlink
		Given I have entered "@Bill Paxton" into the textbox
		  And I have saved the diary entry
		 When I click "Bill Paxton"
		 Then I am redirected to "Bill Paxton"s profile
