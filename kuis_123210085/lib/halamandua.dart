import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuis_123210085/halamandua.dart';
import 'package:kuis_123210085/top_album.dart';

class Halamandua extends StatelessWidget {
  String pesan;
  Halamandua({Key? key, required this.pesan}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(topAlbumList[0].albumName),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                children: [Image.network(topAlbumList[0].imageUrls)],
              ),
              Row(
                children: [Text(topAlbumList[0].albumName)],
              ),
              Row(
                children: [Text(topAlbumList[0].singer)],
              ),
              Row(
                children: [
                  Text(topAlbumList[0].releaseDate),
                  Text(topAlbumList[0].source)
                ],
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
