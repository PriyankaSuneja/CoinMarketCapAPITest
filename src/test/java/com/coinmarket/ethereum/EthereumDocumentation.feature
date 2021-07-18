Feature: Retrieve the details for Ethereum currency and validate
  As an end user of the coinmarketcap
  I should be able to retrieve the info of Ethereum currency
  And verify the details

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * header X-CMC_PRO_API_KEY = apiKey

  Scenario: Retrieve details for Ethereum currency and validate
    Given path 'v1/cryptocurrency/info'
    * param symbol = "ETH"
    When method GET
    Then status 200
    And match response.data.ETH.logo == "https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png"
    * match response.data.ETH.urls.technical_doc contains "https://github.com/ethereum/wiki/wiki/White-Paper"
    * match response.data.ETH.symbol == "ETH"
    * match response.data.ETH.date_added == "2015-08-07T00:00:00.000Z"
    * match response.data.ETH.tags contains "mineable"