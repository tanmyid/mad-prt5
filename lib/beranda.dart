import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  // membuat variable untuk menampung data dari tabel notes
  List ambil_data_note = [];

  // membuat variable untuk menampung data warna random pada listTile
  List warna_listtile = [
    Colors.amber.shade300,
    Colors.lightGreen.shade300,
    Colors.lightBlue.shade300,
    Colors.orange.shade300,
    Colors.pinkAccent.shade100,
    Colors.tealAccent.shade100
  ];

  @override
  void initState() {
    // perintah untuk menjalankan fungsi ambil data dari database
    super.initState();
    ambilData();
  }

  // class untuk menghubungkan koneksi ke database melalui RESTful API
  Future ambilData() async {
    try {
      final response = await http.get(Uri.parse(
          // IP sesuai dengan komputer yang di gunakan.
          "http://10.16.0.115/202053010_flutter_note_app_api/tampil.php"));

      if (response.statusCode == 200) {
        final data_notes = jsonDecode(response.body);
        setState(() {
          ambil_data_note = data_notes;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.table_view),
        title: const Text('Daftar Note',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20)),
      ),
      body: ambil_data_note.isNotEmpty
          ? ListView.builder(
              itemCount: ambil_data_note.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: Card(
                      child: ListTile(
                        title: Text('${ambil_data_note[index]['judul']}'),
                        subtitle: Text('${ambil_data_note[index]['isi_note']}'),
                        trailing: const Icon(Icons.arrow_circle_right),
                        leading:
                            const Icon(Icons.account_circle_rounded, size: 40),
                        tileColor:
                            warna_listtile[index % warna_listtile.length],
                      ),
                    ),
                  ),
                );
              })
          : const Center(
              child: Text(
                "Belum ada data.",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}

// NIM  : 202053010
// Nama : Mohammad Tanio Manunggal
// Kelas: P (Sore)