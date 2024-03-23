import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kuis_123210085/halamandua.dart';
import 'package:kuis_123210085/top_album.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'quiz 123210085',
      home: HalamanLogin(),
    );
  }
}

class HalamanLogin extends StatelessWidget {
  const HalamanLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: const HalamanForm(),
    ));
  }
}

class HalamanForm extends StatefulWidget {
  const HalamanForm({super.key});

  @override
  State<HalamanForm> createState() => _HalamanFormState();
}

class _HalamanFormState extends State<HalamanForm> {
  String username = '';
  String password = '';
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _usernamefield(),
          _passwordfield(),
          _tombol(context),
        ],
      ),
    );
  }

  Widget _usernamefield() {
    return Container(
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          setState(() {
            username = value;
          });
        },
        decoration: const InputDecoration(
            hintText: 'username',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }

  Widget _passwordfield() {
    return Container(
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: const InputDecoration(
            hintText: 'password',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(color: Colors.black))),
      ),
    );
  }

  Widget _tombol(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            if (username == "difa@gmail.com" && password == "123456789") {
              setState(() {
                isLoginSuccess = true;
              });
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ListApp()),
              );
            } else {
              setState(() {
                isLoginSuccess = false;
              });
            }
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('gagal login'),
            ));
          },
          child: const Text("login")),
    );
  }
}

class ListApp extends StatelessWidget {
  // const MainApp({super.key});
  int jumlah = topAlbumList.length;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("halaman list"),
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: ListView.builder(
          itemBuilder: (context, jumlah) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Halamandua(
                    album: topAlbumList[jumlah],
                  );
                }));
              },
              child: Image.network(topAlbumList[jumlah].imageUrls),
            );
          },
          itemCount: jumlah,
        )));
  }
}
