Feature: Retrieve ID of Bitcoin, UsdTether and Ethereum and covert them to Bolivian Boliviano

  Background:
    * url baseUrl
    * header Accept = 'application/json'
    * header X-CMC_PRO_API_KEY = apiKey

  Scenario Outline: Verify Conversion of Crypto currency to Bolivian
    Given path 'v1/cryptocurrency/map'
    * param symbol = <Currency_Symbol>
    When method GET
    Then status 200
    And def ID = response.data[0].id

    Given path 'v1/tools/price-conversion'
    * param amount = 1
    * param id = ID
    * param convert = "BOB"
    * header X-CMC_PRO_API_KEY = apiKey
    When method GET
    Then status 200
    Examples:
      | Currency_Symbol |
      | "BTC"           |
      | "ETH"           |
      | "USDT"          |