import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuis_123210085/halamandua.dart';
import 'package:kuis_123210085/top_album.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  // const MainApp({super.key});
  int jumlah = topAlbumList.length;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("halaman list"),
            backgroundColor: Colors.red,
          ),
          body: Center(
              child: ListView.builder(
            itemBuilder: (context, jumlah) {
              return InkWell(
                onTap: () {
                  String index = topAlbumList[jumlah].toString();
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Halamandua(
                      pesan: index,
                    );
                  }));
                },
                child: Image.network(topAlbumList[jumlah].imageUrls),
              );
            },
            itemCount: jumlah,
          ))),
    );
  }
}
