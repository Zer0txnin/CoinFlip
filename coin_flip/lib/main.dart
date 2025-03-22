import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(CoinFlipApp());
}

class CoinFlipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoinFlipScreen(),
    );
  }
}

class CoinFlipScreen extends StatefulWidget {
  @override
  _CoinFlipScreenState createState() => _CoinFlipScreenState();
}

class _CoinFlipScreenState extends State<CoinFlipScreen> {
  int coinSide = 0; // 0 for Heads, 1 for Tails

  void flipCoin() {
    setState(() {
      coinSide = Random().nextInt(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Coin Flip App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(coinSide == 0 ? 'assets/heads.png' : 'assets/tails.png', width: 200, height: 200),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: flipCoin,
              child: Text('Flip Coin'),
            ),
          ],
        ),
      ),
    );
  }
}
