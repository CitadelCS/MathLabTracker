Feature: User can log in and out of the MathLabTracker

As a student at The Citadel
So I can get credit for being at the Math Lab
I want to sign into MathLabTracker
I want to sign out when I leave
    

Scenario: A student can log in

  Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 1     |
  | 10518786 | Joshua      | Terry     | Florez     | 1     |
  | 10517115 | Christopher | Landry    | Verdicchio | 1     |
  | 10517555 | William     | Sloane    | Rudolph    | 1     |
  

 
  
  Given I am on the home page
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Thanks for logging in!"
  
  Scenario: A student can log out
   Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10519447 | George      | Olivetti  | Moore      | 1     |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 1     |
  | 10518786 | Joshua      | Terry     | Florez     | 1     |
  | 10517115 | Christopher | Landry    | Verdicchio | 1     |
  | 10517555 | William     | Sloane    | Rudolph    | 1     |
  

 Given the following logs exists:
  | CWID     | timestamp                 |
  | 10519447 | 2016-11-11 T14:20:44-05:00|
  
  
  Given I am on the home page
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Thanks for logging in!"
  When I follow "Back"
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Thank you for visiting. Please come again"
  