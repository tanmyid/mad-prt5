import 'package:flutter/material.dart';
import 'beranda.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Note App (RESTful Api)',
      initialRoute: '/',
      routes: {
        '/' : (context) => const Beranda(),
      },
    );
  }
}

// NIM  : 202053010
// Nama : Mohammad Tanio Manunggal
// Kelas: P (Sore)