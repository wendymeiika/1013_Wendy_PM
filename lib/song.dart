import 'package:flutter/material.dart';

class song extends StatelessWidget {
  final List lagu = [
    "Yui – Again (Fullmetal Alchemist : Broterhood)",
    "Galileo Galilei – Aoi Shirori (Anohana)",
    "Chaos Head OP (F.D.D – by Itou Kanako)",
    "Rolling Star – YUI (Bleach)",
    "Shillouette – by KANA-BOON",
    "Ikimono-gakari – Netsujou no Spectrum ",
    "Burnout Syndromes – Fly High!!",
    "Akeboshi – Wind ( Naruto )",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(lagu[index],
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.blueAccent,
                  )),
            ),
          );
        },
        itemCount: lagu.length,
      ),
    );
  }
}
