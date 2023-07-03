Feature: Create Token

Background: Define URL
    Given url apiUrl

Scenario:Create Token

    Given path 'users/login'
    And request {"user":  { "email": "#(UserEmail)", "password": "#(UserPassword)"} }
    When method POST
    Then status 200
    * def authToken = response.user.token
 