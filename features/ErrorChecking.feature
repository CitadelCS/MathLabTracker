Feature: User should not see any errors

As a student at The Citadel
I get scared when I see errors
I then cry and nothing gets done
    
Scenario: A student has to enter a cwid
  
  Given the following students exist:
  | CWID     | first_name  | last_name | teacher    | count |
  | 10528376 | Zovich      | Anthony  | Moore      | 1     |

  
  
  Given I am on the home page
  When I fill in "" for "Enter CWID:"
  When I press "Login"
  Then I shoud see "Please Enter a CWID"
  
  Scenario: A student has to enter a valid cwid
    Given the following students exist: 
    | CWID     | first_name  | last_name | teacher    | count |
    | 10528376 | Zovich      | Anthony  | Moore      | 1     |
    
    
    Given I am on the home page
    When I fill in "1052835" for "Enter CWID:"
    When I press "Login"
    Then I should see "Please enter a valid CWID or create a new student"
    
