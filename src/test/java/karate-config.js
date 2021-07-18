function config() {
    karate.configure( 'logPrettyResponse', true);

    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);

    var env = karate.env;

    karate.log('karate.env system property is:', env);

    if(!env) {
    env = 'prod';
    }

    var config = {
    env: env,
    apiKey: '5a18290a-2b54-42e2-8453-72c5bdf9f62b',
    baseUrl: 'https://pro-api.coinmarketcap.com/'
    }

    if(env == 'dev') {
    config.baseUrl = 'https://pro-api.coinmarketcap.com/';
    }
    else if (env == 'prod') {
    config.baseUrl = 'https://pro-api.coinmarketcap.com/';
    }

    return config
}