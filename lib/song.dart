import 'package:flutter/material.dart';

class song extends StatelessWidget {
  final List lagu = [
    "Life Is Still Going On",
    "Rainbow",
    "Chewing Gum",
    "My First and Last",
    "Dear Dream ",
    "Go",
    "Trigger The Fever",
    "Best Friend",
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: lagu.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                lagu[index],
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.pink[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(studio[index], style: TextStyle(color: Colors.pink[600], fontWeight: FontWeight.bold, fontSize: 10)),
            ),
          );
        },
      ),
    );
  }
}
