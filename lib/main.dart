import 'package:flutter/material.dart';
import './kuis.dart';
import './hasil.dart';

// void main() {
//  runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({Key key}) : super(key: key);
  var _soalIndex = 0;
  var totalSkor = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'Tempat apa yang akan anda kunjungi?',
      'jawaban': [
        {'teks ': 'Pegunungan', 'skor': 10}, //alt+shift+arrow bawah
        {'teks ': 'Pantai', 'skor': 5},
        {'teks ': 'Mall', 'skor': 3},
        {'teks ': 'Hutan', 'skor': 1},
      ],
    },
    {
      'pertanyaan': 'Apa warna kesukaan anda?',
      'jawaban': [
        {'teks': 'Merah', 'skor': 3},
        {'teks': 'Biru', 'skor': 11},
        {'teks': 'Hijau', 'skor': 5},
        {'teks': 'Hitam', 'skor': 9},
      ],
    },
    {
      'pertanyaan': 'Apa hobi anda?',
      'jawaban': [
        {'teks': 'Sepak Bola', 'skor': 9},
        {'teks': 'Basket', 'skor': 7},
        {'teks': 'Berenang', 'skor': 6},
        {'teks': 'Ngoding', 'skor': 5},
      ],
    },
  ];
  void _jawaban(int skor) {
    totalSkor = totalSkor + skor;
    setState(() {
      _soalIndex += 1;
    });
    if (_soalIndex < pertanyaan.length) {
      print('Masih ada Soal Berikutnya');
    } else {
      print('Sudah tidak ada soal!');
    }

    print(_soalIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Kuis'),
        ),
        body: _soalIndex < pertanyaan.length
            ? Kuis(
                jawaban: _jawaban,
                pertanyaan: pertanyaan,
                soalIndex: _soalIndex,
              )
            : Hasil(),
      ),
    );
  }
}
