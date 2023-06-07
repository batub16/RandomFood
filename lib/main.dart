import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Bugun Ne Yesem",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;

  int yemekNo = 1;

  int tatliNo = 1;

  List<String> corbaAdlari = [
    "Mercimek",
    "Tarhana",
    "Tavuk Suyu Corba",
    "Düğün Corbası",
    "Yoğurt Corbası"
  ];
  List<String> yemekAdlari = [
    "KarniYarik",
    "Manti",
    "Kuru Fasulye",
    "İcli Kofte",
    "Balik"
  ];
  List<String> tatliAdlari = [
    "Kadayif",
    "Baklava",
    "Sutlac",
    "Tiramisu",
    "Dondurma"
  ];

  void RastgeleYemek() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: RastgeleYemek,
                  child: Image.asset("assets/corba_$corbaNo.jpg")),
            ),
          ),
          Text(corbaAdlari[corbaNo - 1]),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: RastgeleYemek,
                  child: Image.asset("assets/yemek_$yemekNo.jpg")),
            ),
          ),
          Text(yemekAdlari[yemekNo - 1]),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: RastgeleYemek,
                  child: Image.asset("assets/tatli_$tatliNo.jpg")),
            ),
          ),
          Text(tatliAdlari[tatliNo - 1]),
          Container(
            width: 250,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
