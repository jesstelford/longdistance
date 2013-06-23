Feature: Setting a timezone
	In order to allow cross-timezone communication
	Customers should be able to
	Set their local timezone

	Background:
		Given I am logged in
		  And I am on the "My Account" page

	Scenario Outline: Location Aware Default Timezone
		Given I am using a <location> IP
		Then my timezone should be <timezone>

		Examples: 
			| location      | timezone |
			| Sydney        | GMT+1000 |
			| San Francisco | GMT-8000 |  

	Scenario: Default Timezone Unknown
		Given I am using an unknown IP
		Then my timezone should be GMT
		And I should see the text "Set your timezone"
