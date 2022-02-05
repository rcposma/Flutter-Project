import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
//buraya sınıfın altına iki fonksiyon oluşturdum
class MyApp extends StatelessWidget {
  Container containerOlustur(String harf, Color renk) {
    return Container(
      alignment: Alignment.center,
      width: 75,
      height: 75,
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }

  Container containerColOlustur(String harf, Color renk) {
    return Container(
          alignment: Alignment.center,
          width: 73,
          height: 73,
          margin: EdgeInsets.only(top: 2),
          color: renk,
          child: Text(
            harf,
            style: TextStyle(fontSize: 48),
          ),
        );
  }

  Column dartColumnuOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Expanded(child: containerColOlustur("E", Colors.orange.shade100)),
         Expanded(child: containerColOlustur("R", Colors.orange.shade200)),
         Expanded(child: containerColOlustur("S", Colors.orange.shade300)),
         Expanded(child: containerColOlustur("L", Colors.orange.shade400)),
         Expanded(child: containerColOlustur("E", Colors.orange.shade500)),
         Expanded(child: containerColOlustur("R", Colors.orange.shade600)),
         Expanded(child: containerColOlustur("İ", Colors.orange.shade700)),
      ],
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur("D", Colors.orange.shade100),
        containerOlustur("A", Colors.orange.shade300),
        containerOlustur("R", Colors.orange.shade500),
        containerOlustur("T", Colors.orange.shade700),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: Colors.blueGrey,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Flutter Dersleri"),
        ),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               dartRowunuOlustur(),
              Expanded(child: dartColumnuOlustur()),
            ],
          ),
        ),
      ),
    );
  }
}
