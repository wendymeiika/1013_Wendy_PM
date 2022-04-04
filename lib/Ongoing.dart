import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ongoing extends StatelessWidget {
  final List<String> gambar = [
    "asset/image/DREAM 1.png",
    "asset/image/DREAM 2.png",
    "asset/image/DREAM 3.png",
    "asset/image/DREAM 4.png",
    "asset/image/DREAM 5.png",
    "asset/image/DREAM 6.png",
    "asset/image/DREAM 7.png"
  ];

  final List<String> sub = [
    'Life Is Still Going On - MV',
    'Rainbow - MV',
    'Chewing Gum - MV',
    'My First and Last - MV',
    'Dear Dream - MV',
    'Go - MV',
    'Trigger The Fever - MV'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: gambar.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                gambar[index],
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              )),
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}
