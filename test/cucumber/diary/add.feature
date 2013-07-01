Feature: Adding a diary entry
	To allow users to interact
	As a customer
	I should be able to add diary entries

	Background:
		Given I am logged in
		  And I am on the "Diary" page

	Scenario: Empty input field
		Then I should see a textbox
		 And the textbox should have placeholder text "Write in your Diary..."
		 And I should see a button "Save"
		 And the button should be disabled

	Scenario: Enter diary text
		When I enter text into the textbox
		Then the placeholder text should be removed
		 And I should see the text I have entered
		 And the button should be active

	Scenario: Save diary entry
		Given I have entered text into the textbox
		 When I click "Save"
		 Then I should see the text appear below the textbox
		  And the textbox should show the placeholder text "Write in your Diary..."
		  And the button should be disabled
