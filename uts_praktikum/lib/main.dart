import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UTS Mobile Programming',
      home: const ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'UTS Mobile Programming',
          style: TextStyle(
            color: Colors.white, // <-- Correct place
            fontWeight: FontWeight.bold,
          ),
        ),

        centerTitle: false,
      ),
      body: Column(
        children: [
          //  HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(30),
            color: Colors.yellow[400],
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Yusuf Geusan Mukhlas',
                  style: TextStyle(fontSize: 39, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  'Npm: 122005012',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          //  Gambar
          Expanded(
            child: Center(
              child: ClipOval(
                child: Image.asset(
                  'assets/images/profil.jpg',
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
