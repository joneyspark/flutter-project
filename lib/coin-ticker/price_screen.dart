import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/coin-ticker/coin_data.dart';
import 'dart:io' show Platform;

import 'package:helloworld/coin-ticker/services/networking.dart';

class CoinTickerScreen extends StatefulWidget {
  const CoinTickerScreen({super.key});

  @override
  State<CoinTickerScreen> createState() => _CoinTickerScreenState();
}

class _CoinTickerScreenState extends State<CoinTickerScreen> {
  String selectedCurrency = 'USD';
  int currencyRate = 0;

  CoinAPIHelper coinAPIHelper = CoinAPIHelper();

  @override
  initState() {
    super.initState();
    getCoinData();
  }

  Map<String, String> cryptoVales = {};
  bool isWating = false;

  void getCoinData() async {
    isWating = true;
    try {
      var data = await coinAPIHelper.getCoinAPI(selectedCurrency);
      isWating = false;
      setState(() {
        cryptoVales = data;
      });
    } catch (e) {
      print(e);
    }
  }

  Column makeCards() {
    List<CryptoCard> cryptoCards = [];
    for (var crypto in cryptoList) {
      cryptoCards.add(CryptoCard(
          value: isWating ? '?' : cryptoVales[crypto].toString(),
          selectedCurrency: selectedCurrency,
          cryptoCurrency: crypto));
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: cryptoCards,
    );
  }

  // andriod currency dropdown function
  DropdownButton<String> andriodDropDown() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    // for (int i = 0; i < currenciesList.length; i++) {
    for (String currency in currenciesList) {
      // String currency = currenciesList[i];
      var newMenu = DropdownMenuItem(
        value: currency.toString(),
        child: Text(currency.toString()),
      );
      dropDownItems.add(newMenu);
    }

    return DropdownButton<String>(
      value: selectedCurrency,
      items: dropDownItems,
      onChanged: (value) {
        setState(() {
          selectedCurrency = value.toString();
          getCoinData();
        });
      },
    );
  }

  // iOS currency dropdown function

  CupertinoPicker getIOSPicker() {
    List<Text> dropDownItems = [];

    for (String currency in currenciesList) {
      var newMenu = Text(currency);
      dropDownItems.add(newMenu);
    }
    return CupertinoPicker(
      backgroundColor: Colors.lightBlue,
      itemExtent: 32.0,
      onSelectedItemChanged: (selectedIndex) {
        var selectedValue = currenciesList[selectedIndex];
        setState(() {
          selectedCurrency = selectedValue.toString();
          getCoinData();
        });
      },
      children: dropDownItems,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coin Ticker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          makeCards(),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? getIOSPicker() : andriodDropDown(),
          ),
        ],
      ),
    );
  }
}

class CryptoCard extends StatelessWidget {
  const CryptoCard({
    Key? key,
    required this.value,
    required this.selectedCurrency,
    required this.cryptoCurrency,
  }) : super(key: key);

  final String value;
  final String selectedCurrency;
  final String cryptoCurrency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0.0),
      child: Card(
        child: Padding(
          child: Text(
            "1 $cryptoCurrency = $value $selectedCurrency",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
          padding: EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 15.0,
          ),
        ),
        color: Colors.lightBlue,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
