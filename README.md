# CoinMarketCap API Test [![Build Status](https://travis-ci.com/PriyankaSuneja/CoinMarketCapAPITest.svg?token=8AotiCskSMzFdHRtdrUD&branch=main)](https://travis-ci.com/PriyankaSuneja/CoinMarketCapAPITest)

## Karate Test Framework Introduction
Karate enables you to script a sequence of calls to any kind of web-service and assert that the responses are as expected. It makes it really easy to build complex request payloads, traverse data within the responses, and chain data from responses into the next request. Karate's payload validation engine can perform a 'smart compare' of two JSON or XML documents without being affected by white-space or the order in which data-elements actually appear, and you can opt to ignore fields that you choose.

Since Karate is built on top of Cucumber-JVM, you can run tests and generate reports like any standard Java project. But instead of Java - you write tests in a language designed to make dealing with HTTP, JSON or XML - simple.

## Prerequisites
- Maven version 3 or above and JDK version 8 or above are already installed on the host machine.
  
## Executing the tests

Ensure you are in the project root directory and run the following command from the command line.

To execute all the API tests

```
$ mvn clean test

```

Once executed the test results will be stored in this path `target/cucumber-html-reports/overview-features.html`.


## Running in IntelliJ
f you use IntelliJ IDEA, Cucumber support is built-in, and you can even select a single Scenario within a Feature to run at a time. If you are using the free Community Edition, you can easily install the "Gherkin" and "Cucumber for Java" plugins.

### Environment-specific configurations and other default config
Application's environments are configured in `test/karate.js` file, so that the tests can be run in different environments.




