Feature: Retrieve the info of first 10 crypto currency and verify if all have mineable tag and correct currency name
  As an end user of the coinmarketcap
  I should be able to retrieve the info of first 10 crypto currencies
  And verify if all of them are mineable and have correct name

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * header X-CMC_PRO_API_KEY = apiKey

  Scenario Outline: Retrieve the info and verify the tag and currency name
    Given path 'v1/cryptocurrency/info'
    * param id = ID
    When method GET
    Then status 200
    And match response.data.<ID>.tags contains "mineable"
    * match response.data.<ID>.name == currencyName
    Examples:
      | ID         | currencyName |
      | 1          | Bitcoin      |
      | 2          | Litecoin     |
      | 3          | Namecoin     |
      | 4          | Terracoin    |
      | 5          | Peercoin     |
      | 6          | Novacoin     |
      | 7          | Devcoin      |
      | 8          | Feathercoin  |
      | 9          | Mincoin      |
      | 10         | Freicoin     |