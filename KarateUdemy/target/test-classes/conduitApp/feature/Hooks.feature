Feature: Hooks

Background:  hooks
    # * def result = callonce read('classpath:Helpers/Dummy.feature')
    # * def username = result.username 

    #after hook
    * configure afterScenario = function(){ karate.call('classpath:Helpers/Dummy.feature')}

Scenario: First Scenario

    * print 'This is first message'

Scenario: Second Scenario

    * print 'This is Second message'