import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ongoing extends StatelessWidget {
  final List<String> gambar = [
    "asset/image/mv1.jpg",
    "asset/image/mv2.jpg",
    "asset/image/mv3.jpg",
    "asset/image/mv4.png",
    "asset/image/mv5.jpg",
    "asset/image/mv6.jpg",
    "asset/image/mv7.jpg"
  ];

  final List<String> sub = [
    'Life Is Still Going On - MV',
    'Rainbow - MV',
    'Chewing Gum - MV',
    'My First and Last - MV',
    'Dear Dream - MV',
    'W Go Up - MV',
    'Go - MV'
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
