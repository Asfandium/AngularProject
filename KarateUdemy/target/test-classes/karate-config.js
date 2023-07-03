function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
  apiUrl: 'https://api.realworld.io/api/'
  }
  if (env == 'dev') {
   config.UserEmail = 'karate123456789@test.com'
   config.UserPassword = 'karate123456789'
  } 
  if (env == 'qa') {
    config.UserEmail = 'karate1234567890@test.com'
   config.UserPassword = 'karate1234567890'
  }

  var accessToken = karate.callSingle('classpath:Helpers/CreateToken.feature', config).authToken
  karate.configure('headers', {Authorization: 'Token ' + accessToken})
  return config;
}