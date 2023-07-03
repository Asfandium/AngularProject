Feature: Articles

Background: Define URL
    * url apiUrl
    * def articleRequestBody = read('classpath:conduitApp/json/newArticleRequest.json')
    * def dataGenerator = Java.type('Helpers.DataGenerator')
    * set articleRequestBody.article.title = dataGenerator.getRandomArticleValues().title
    * set articleRequestBody.article.description = dataGenerator.getRandomArticleValues().description
    * set articleRequestBody.article.body = dataGenerator.getRandomArticleValues().body


    * def tokenResponse = callonce read('classpath:Helpers/CreateToken.feature') 
    * def token = tokenResponse.authToken




# Scenario: Create a new article
#     Given header Authorization = 'Token ' + token
#     Given path 'articles'
#     And request articleRequestBody
#     When method POST
#     Then status 200
#     And match response.article.title == articleRequestBody.article.title



# Scenario: Create and delete article
#     Given header Authorization = 'Token ' + token
#     Given path 'articles'
#     And request articleRequestBody
#     When method POST
#     Then status 200
#     * def articleId = response.article.slug

     
#     Given path 'articles'
#     When method GET
#     Then status 200
#     And match response.article[0].title == articleRequestBody.article.title

#     Given header Authorization = 'Token' + token
#     Given path 'articles', articleId
#     When method Delete
#     Then status 200

#     Given path 'articles'
#     When method GET
#     Then status 200
#     And match response.article[0].title != articleRequestBody.article.title
