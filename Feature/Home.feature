Feature: Accessing DS Algo Portal Home Page

Background: 
Given the user has the browser open
And the user enters the correct DS Algo portal URL


Scenario: Verify that user is able to open the dsAlgo Portal
Then The user should be able to land on dsAlgo portal with Get Started button

Scenario: Verify contents of DsAlgo Portal
Then The user should be able to see text "Preparing for the Interviews You are at the right place"

Scenario: Verify the Home page for an user without Sign in
And user click on "Get Started"
Then The user should be able see Home Page
And  the page title should be "Numpy Ninja" on top right of the page with Drop down options
And the page title should be "Register" "Sign In" on top Left of the page

Scenario: Verify clicking on Register option
When the user clicks on "Get Started"
And the user clicks on "Register"
Then the user should be redirected to the Register page

Scenario: Verify clicking on Sign In option
When the user clicks on "Get Started"
And the user clicks on "Sign In"  
Then The user should be redirected to the Sign In page

Scenario: Verify that the user can view Data Structures dropdown options without signing in
Given the user is on the Home page
When the user clicks on the Data Structures dropdown
Then the user should see the following options:
    | Data Structures |
    | Array |
    | Linked List |
    | Stack |
    | Queue |
    | Tree |
    | Graph |



Scenario Outline: Warning message shown when selecting an option without signing in
  Given the user is on the Home page
  When the user selects "<option>" from the dropdown without signing in
  Then the user should see a warning message "You are not logged in"

Examples:
  | option |
  | Data Structures |
  | Array |
  | Linked List |
  | Stack |
  | Queue |
  | Tree |
  | Graph |

Scenario Outline: Warning message shown when clicking Get Started without signing in
  Given the user is on the Home page
  When the user clicks the "Get Started" button for "<module>" on the home page without signing in
  Then the user should see a warning message "You are not logged in"

Examples:
  | module |
  | Data Structures-Introduction |
  | Array |
  | Linked List |
  | Stack |
  | Queue |
  | Tree |
  | Graph |
