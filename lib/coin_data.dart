import 'Services/NetworkData.dart';
const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate/BTC/';
const apiKey = '?apikey=56BBF63B-5E51-4B06-9220-9647825D3541';

class CoinData {
  Future<double> getCoinData(String currency)async{
    double coinData = await NetworkData(url: '$coinAPIURL$currency$apiKey').getData();
    return coinData;
  }
}
