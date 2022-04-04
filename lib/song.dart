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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(lagu[index],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.pink[800],
                  )),
            ),
          );
        },
        itemCount: lagu.length,
      ),
    );
  }
}
