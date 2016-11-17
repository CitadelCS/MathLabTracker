Feature: User can log in and out of the MathLabTracker

As a student at The Citadel
So I can get credit for being at the Math Lab
I want to sign into MathLabTracker
I want to sign out when I leave
    

Scenario: A student can log in

  Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count | classes                 |
  | 10519447 | George      | Olivetti  | Moore      | 0     | MATH451,MATH131,MATH223 |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 0     | MATH361,MATH131         |
  | 10518786 | Joshua      | Terry     | Florez     | 0     | MATH107                 |
  | 10517115 | Christopher | Landry    | Verdicchio | 0     | MATH106,MATH131         |
  | 10517555 | William     | Sloane    | Rudolph    | 0     | MATH451,MATH223         |

 
  
  Given I am on the home page
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Thanks for logging in!"
  
  Scenario: A student can log out
   Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count | classes                 |
  | 10519447 | George      | Olivetti  | Moore      | 0     | MATH451,MATH131,MATH223 |
  | 10514815 | Kaige       | Lindberg  | Trautman   | 0     | MATH361,MATH131         |
  | 10518786 | Joshua      | Terry     | Florez     | 0     | MATH107                 |
  | 10517115 | Christopher | Landry    | Verdicchio | 0     | MATH106,MATH131         |
  | 10517555 | William     | Sloane    | Rudolph    | 0     | MATH451,MATH223         |

 Given the following log exists:
  | CWID     | Class       | Timestamp                |
  | 10507615 | MATH451     | 2016-11-11T14:20:44-05:00|
  
  
  Given I am on the home page
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Thanks for logging in!"
  When I follow "Back"
  When I fill in "10519447" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Thank you for visiting. Please come again"
  