import 'package:flutter/material.dart';

class lagu extends StatelessWidget {
  final List judul = [
    "Life Is Still Going On",
    "Rainbow",
    "Chewing Gum",
    "My First and Last",
    "Dear Dream ",
    "Go",
    "Trigger The Fever",
    "Best Friend",
    "BOOM",
    "Hello Future"
  ];

  final List<String> studio = [
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
    'NCT Dream - SM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: judul.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(
                Icons.play_arrow,
                color: Colors.pink[800],
              ),
              title: Text(judul[index], style: TextStyle(color: Colors.pink[600], fontWeight: FontWeight.bold, fontSize: 17)),
              subtitle: Text(studio[index]),
            ),
          );
        },
      ),
    );
  }
}
