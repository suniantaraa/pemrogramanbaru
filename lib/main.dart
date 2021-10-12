import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Container gambar(String gambarVal, String judulBuah, String deskripsiBuah) {
    return Container(
      width: 250.0,
      child: Card(
        color: Colors.white,
        child: Wrap(
          children: <Widget>[
            Image.network(gambarVal),
            ListTile(
              title: Text(judulBuah, textAlign: TextAlign.center),
              subtitle: Text(deskripsiBuah, textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Pemrograman',
      home: Scaffold(
        backgroundColor: Color(0xFF546E7A),
        appBar: AppBar(
            backgroundColor: Color(0xFF263238),
            title: Text(
              "DAFTAR NAMA BUAH",
              style: TextStyle(color: Colors.white),
            )),
        body: Center(
          child: Container(
              height: 270,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  gambar(
                      "https://id.sharp/sites/default/files/uploads/image-artikel/Jenis%20Buah-Buahan%20Ini%20Efektif%20Membantu%20Menurunkan%20Berat%20Badan%201.jpg",
                      "APEL",
                      "apel warnanya merah"),
                  gambar(
                      "https://id.sharp/sites/default/files/uploads/image-artikel/Jenis%20Buah-Buahan%20Ini%20Efektif%20Membantu%20Menurunkan%20Berat%20Badan%201.jpg",
                      "APEL",
                      "apel warnanya merah"),
                  gambar(
                      "https://id.sharp/sites/default/files/uploads/image-artikel/Jenis%20Buah-Buahan%20Ini%20Efektif%20Membantu%20Menurunkan%20Berat%20Badan%201.jpg",
                      "APEL",
                      "apel warnanya merah"),
                  gambar(
                      "https://id.sharp/sites/default/files/uploads/image-artikel/Jenis%20Buah-Buahan%20Ini%20Efektif%20Membantu%20Menurunkan%20Berat%20Badan%201.jpg",
                      "APEL",
                      "apel warnanya merah"),
                ],
              )),
        ),
      ),
    );
  }
}
