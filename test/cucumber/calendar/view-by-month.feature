Feature: View a month by month calendar
	To allow users to see future and past dates
	As a Customer
	I should be able to navigate a month by month calendar

	Background:
		Given I am logged in
		  And I am on the "Calendar" page

	Scenario: Default Calendar
		Then I should see a calendar of this month
		 And today should be highlighted

	Scenario Outline: Change to next / prev month
		When I click "<month>"
		Then I should see a calendar of <month>
		 And no dates should be highlighted

		Examples:	
			| month |
			| next  |
			| prev  |
	
	# Displayed like so:
	#  2008 | 2009 | 2010 | 2011 | 2012 | 2013 | 2014 | 2015 | 2016 | 2017
	# Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec
	#	Scenario: Change to month
