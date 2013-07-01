Feature: Editing a diary entry
	To allow customers to amend their entries
	As a customer
	I should be able to edit any past diary entry

	Background:
		Given I am logged in
		  And I am on the "Diary" page
		  And I have a diary entry

	Scenario: Double click to edit
		 When I double click the text
		 Then the entry should be replaced with a textbox
		  And the textbox should contain the diary entry text
		  And I should see a button "Save"

	Scenario: Tooltip for editing
		When I hover over the text
		 And I wait for 1000ms
		Then I should see a tooltip "Double Click to Edit"

	Scenario: Saving edited entry
		Given I am editing a diary entry
		 When I click "Save"
		 Then the textbox should be removed
		  And the diary entry should be replaced with the edited text
