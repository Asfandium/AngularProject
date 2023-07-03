Feature: Create Token

Background: Define URL
    
    * url apiUrl
    * def dataGenerator = Java.type('Helpers.DataGenerator')

    # * def jsFunction = 
    # """
    #     function () {
    #         var DataGenerator = Java.type('Helpers.DataGenerator')
    #         var generator = new DataGenerator()
    #         return generator.getRandomUsername2()
            
    #     }
    # """

    # * def randomUsername2 = call jsFunction


# Scenario: New User Sign Up
#     * def randomEmail = dataGenerator.getRandomEmail()
#     * def randomUsername = dataGenerator.getRandomUsername()

#     Given path 'users'
#     And request 
#     """
#         { 
#             "user": 
#             { 
#                 "email": #(randomEmail), 
#                 "password": "asfandi", 
#                 "username": #(randomUsername) 
#                } 
#         }
      

#     """ 
#     When method POST
#     Then status 200

#     And match response == 
#     """
#         {
#             "user": 
#             {
#                 "email": #(randomEmail),
#                 "username": #(randomUsername) ,
#                 "bio": null,
#                 "image": "#string",
#                 "token": "#string"
#             }   
#         }
#     """
    
# Scenario Outline: Validate Signup error Message
#     * def randomEmail = dataGenerator.getRandomEmail()
#     * def randomUsername = dataGenerator.getRandomUsername()

#     Given path 'users'
#     And request 
#     """
#         { 
#             "user": 
#             { 
#                 "email": "<email>", 
#                 "password": "<password>", 
#                 "username": "<username>" 
#                } 
#         }
      

#     """ 
#     When method POST
#     Then status 422
#     And match response == <errorResponse>

#     Examples:
#            | email            | password | username | errorResponse |
#            | #(randomEmail)   | asfandi | asfandi1 | {"errors":{"username":["has already been taken"]}} |
#            | asfandi1@test.com  | asfandi | #(randomUsername) | {"errors":{"email":["has already been taken"]}} |
