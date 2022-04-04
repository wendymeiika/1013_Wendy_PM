import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ongoing extends StatelessWidget {
  final List<String> nama = [
    'SPY X FAMILY',
    'The Rising of the Shield Hero ',
    'Yuusha Yamemasu',
    'Komi Cant Communication (Season 2)',
    'Tomodachi Game',
    'Kaguya-sama: Love is War (Season 3)',
    'BanG Dream! Poppin’ Dream!',
    'Tokyo 24th Ward',
    'Slow Loop',
    'Aharen-san wa Hakarenai',
  ];

  final List<String> studio = [
    'Wit Studio, CloverWorks',
    'Kinema Citrus, DR Movie',
    'EMT Squared',
    'OLM',
    'Okuruto Noboru',
    'A-1 Pictures',
    'Sanzigen ',
    'CloverWorks',
    'Connect',
    'Felix Film',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: nama.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                nama[index],
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(studio[index], style: TextStyle(color: Colors.lightBlueAccent, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
