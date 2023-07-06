Feature: Login feature 

  @login      
  Scenario Outline: I login to kasirAja dashboard (positive case)

    Given I on the login page 
    When I input email : <email> and password : <password>
    Then url contain <pathName> and showing title kasirAja

    Examples:
      | email           | password             | pathName     |
      | samplexx@ex.com | 123adsfadf@          | dashboard    |

      