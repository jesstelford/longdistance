Feature: View a month by month calendar
	To increase interaction with the calendar
	As a Customer
	I should be able to navigate month by month

	Background:
		Given I am logged in
		  And I am on the "Calendar" page

	Scenario: Default Calendar
		Then I should see a calendar of this month
		 And today should be highlighted

	Scenario Outline: Change to specific month
		When I click "<month>"
		Then I should see a calendar of "<month>"
		 And no dates should be highlighted

		Examples:	
			| month     |
			| January   |
			| February  |
			| March     |
			| April     |
			| May       |
			| June      |
			| July      |
			| August    |
			| September |
			| October   |
			| November  |
			| December  |
	
	# Displayed like so:
	#  2008 | 2009 | 2010 | 2011 | 2012 | 2013 | 2014 | 2015 | 2016 | 2017
	# Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec

	Scenario Outline: Change to next/prev month
		Given I am viewing month "<start_date>"
		 When I click "<change_button>"
		 Then I should see a calendar of "<new_date>"

		Examples:
			| start_date    | change_button | new_date      |
			| January 2014  | Next Month    | February 2014 |
			| December 2014 | Next Month    | January 2015  |
			| February 2014 | Prev Month    | January 2014  |
			| January 2015  | Prev Month    | December 2014 |

	Scenario Outline: Change to specific year
		Given I am viewing any year
		When I click "<year>"
		Then I should see the month of "January" in "<year>"
		 And no dates should be highlighted

		Examples:	
			| year |
			| 2013 |
			| 2014 |
			| 2015 |
			| 2016 |
	
