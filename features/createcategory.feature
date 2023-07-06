Feature: Create category feature 

  @category
  Scenario Outline: I create new category (positive case)

    Given I on the category page 
    When I click tambah button
    When I type category name : <catName> and description : <catDesc>
    Then showing toast success message : <message>

    Examples:
      | catName                 | catDesc                       | message             |
      | Minuman bersoda         | Minuman dari air bersoda      | item ditambahkan    |

  Scenario Outline: I create new category without category name (negative case)

    Given I on the category page 
    When I click tambah button
    When I type description : <catDescNeg>
    Then showing warning message : <warningMessage>

    Examples:
      | catDescNeg                      | warningMessage                       |
      | Minuman dari air bersoda        | "name" is not allowed to be empty    |