Feature: Setting a timezone
	In order to allow cross-timezone communication
	Customers should be able to
	Set their local timezone

	Background:
		Given I am logged in
		  And I am on the "My Account" page

	Scenario Outline: Default Timezone
		Given I am using a <location> IP
		Then my timezone should be <timezone>

		Examples: 
			| location      | timezone |
			| Sydney        | GMT+10   |
			| San Francisco | GMT+0    |  

	Scenario: Default Timezone Unknown
		Given I am using an unknown IP
		Then my timezone should be GMT+0
		And I should see the text "Set your timezone"
