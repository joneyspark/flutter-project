import 'dart:convert';

import 'package:helloworld/coin-ticker/coin_data.dart';
import 'package:http/http.dart' as http;

const coinURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'E707097A-5F38-4DA4-A325-5278DCA83BEC';

class CoinAPIHelper {
  Future getCoinAPI(String currencyType) async {
    Map<String, String> cryptoPrices = {};
    for (String cryptoName in cryptoList) {
      var url = Uri.parse('$coinURL/$cryptoName/$currencyType?apikey=$apiKey');
      http.Response response = await http.get(url);
      if (response.statusCode == 200) {
        var decodedData = jsonDecode(response.body);
        double lastPrice = decodedData['rate'];
        cryptoPrices[cryptoName] = lastPrice.toStringAsFixed(0);
      } else {
        print(response.statusCode);
        throw 'Problem with the get request';
      }
    }
    return cryptoPrices;
  }
}
