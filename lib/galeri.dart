import 'package:flutter/material.dart';

class galeri extends StatelessWidget {
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
    'NCT Dream Renjun dikenal sebagai salah satu member NCT yang paling estetik',
    'NCT Dream Jeno merupakan salah satu member NCT yang kehadirannya sudah dikenal sejak ia masih remaja.',
    'NCT Dream Haechan diketahui sebagai salah satu idol yang memiliki otak yang cerdas dan kreatif',
    'NCT Dream Jaemin Paras Jaemin yang menawan ini selalu bisa mencuri perhatian para NCTzen, terutama bagi para noona yang mengidolakan Jaemin',
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
              subtitle: Text(sub[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
            ),
          );
        },
      ),
    );
  }
}
