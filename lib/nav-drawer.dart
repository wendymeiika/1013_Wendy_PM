import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
              icon: Icons.audiotrack,
              text: 'song',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(0);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.assignment_sharp,
              text: 'Album',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(1);
                Navigator.pop(context);
              }),
          _drawerItem(
              icon: Icons.offline_bolt,
              text: 'Offline',
              onTap: () {
                DefaultTabController.of(context)?.animateTo(2);
                Navigator.pop(context);
              }),

          //_drawerItem(icon: Icons.delete, text: 'Trash', onTap: () => print('Tap Trash menu')),
          Divider(height: 25, thickness: 1),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 10),
            child: Text("Labels",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                )),
          ),
          _drawerItem(icon: Icons.bookmark, text: 'Family', onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/resoo.jpg'), fit: BoxFit.cover),
    ),
    otherAccountsPictures: [
      ClipOval(
        child: Image(image: AssetImage('assets/images/resoo.jpg'), fit: BoxFit.cover),
      ),
      ClipOval(
        child: Image(image: AssetImage('assets/images/resoo.jpg'), fit: BoxFit.cover),
      )
    ],
    accountName: Text('RESOOMUSIC'),
    accountEmail: Text('hallo@belajarflutteralvina.com'),
  );
}

Widget _drawerItem({IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}

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

class galeri extends StatelessWidget {
  final List<String> gambar = [
    "asset/image/rj.jpeg",
    "asset/image/jn.jpeg",
    "asset/image/hc.jpeg",
    "asset/image/jm.jpeg",
    "asset/image/ch.jpeg",
    "asset/image/js.jpeg",
    "asset/image/mk.jpeg"
  ];

  final List<String> sub = [
    'NCT Dream Renjun dikenal sebagai salah satu member NCT yang paling estetik',
    'NCT Dream Jeno merupakan salah satu member NCT yang kehadirannya sudah dikenal sejak ia masih remaja.',
    'NCT Dream Haechan diketahui sebagai salah satu idol yang memiliki otak yang cerdas dan kreatif',
    'NCT Dream Jaemin Paras Jaemin yang menawan ini selalu bisa mencuri perhatian para NCTzen',
    'NCT Dream Chonle dikenal sebagai Chenle, adalah seorang penyanyi, penulis lagu, penari dan pemeran Tiongkok yang berbasis di Seoul, Korea Selatan.',
    'NCT Dream Jisung seorang penyanyi Korea Selatan yang berada di bawah naungan SM Entertainment.',
    'NCT Dream Mark Mark Lee, lebih dikenal dengan nama Mark adalah rapper, dancer, dan penyanyi berkebangsaan Kanada'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              subtitle: Text(sub[index], style: TextStyle(color: Colors.pink[800], fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}

class Vidio extends StatelessWidget {
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
              subtitle: Text(sub[index], style: TextStyle(color: Colors.pink[800], fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}
