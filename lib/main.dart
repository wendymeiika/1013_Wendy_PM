import 'package:flutter/material.dart';
import './nav-drawer.dart';

void main() {
  runApp(MaterialApp(
    title: "belajardraweralvina.com",
    home: BelajarNavigationDrawer(),
  ));
}

class BelajarNavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.pink[700],
              title: Text("NCT Dream Official"),
              bottom: TabBar(
                tabs: [
                  new Tab(icon: new Icon(Icons.audiotrack), text: "Lagu"),
                  new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                  new Tab(icon: new Icon(Icons.video_library_sharp), text: "Vidio MV"),
                ],
              ),
            ),
            drawer: DrawerWidget(),
            body: TabBarView(
              children: <Widget>[
                new lagu(),
                new galeri(),
                new Vidio(),
              ],
            )));
  }
}
