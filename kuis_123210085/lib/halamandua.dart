import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuis_123210085/halamandua.dart';
import 'package:kuis_123210085/top_album.dart';

class Halamandua extends StatelessWidget {
  TopAlbum album;
  Halamandua({Key? key, required this.album}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(topAlbumList[0].albumName),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [Image.network(album.imageUrls)],
              ),
              Row(
                children: [Text(album.albumName)],
              ),
              Row(
                children: [Text(album.singer)],
              ),
              Row(
                children: [Text(album.releaseDate), Text(album.source)],
              )
            ],
          ),
        ));
  }
}

// void main() {
//   runApp(MainApp());
// }

// class MainApp extends StatelessWidget {
//   // const MainApp({super.key});
//   String username = "";
//   String password = "";
//   String sukses = "masukan akun";

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text("login page"),
//             backgroundColor: Colors.red,
//           ),
//           body: Center(
//               child: ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(context,
//                         MaterialPageRoute(builder: (context) {
//                       return halamanDua();
//                     }));
//                   },
//                   child: Text("login")))),
//     );
//   }
// }
