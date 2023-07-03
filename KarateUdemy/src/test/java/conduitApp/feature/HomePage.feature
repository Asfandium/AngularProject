Feature: Test for the home page

# Scenario: Get all tags
#     Given url apiUrl
#     When method Get
#     Then status 200
#     And match response.tags contains 'welcome'
#     And match each response.tags == "#string"

# Scenario: Get 10 articles from page
#     * dev timeValidator = read('classpath:Helper/timeValidator.js')
#     Given params{limit:10, offset: 0} 
#     Given url 'https://api.realworld.io/api/tags'
#     When method Get
#     Then status 200