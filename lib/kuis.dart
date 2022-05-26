import 'package:flutter/material.dart';
import './pertanyaan.dart';
import './jawaban.dart';

class Kuis extends StatelessWidget {
  //const Kuis({Key key}) : super(key: key);
  Function jawaban;
  List<Map<String, Object>> pertanyaan;
  int soalIndex;

  Kuis(
      {@required this.jawaban,
      @required this.pertanyaan,
      @required this.soalIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Pertanyaan(pertanyaan[soalIndex]['pertanyaan']),
        ...(pertanyaan[soalIndex]['jawaban'] as List<Map<String, Object>>)
            .map((jawabanText) {
          return Jawaban(jawaban, jawabanText['teks']);
        }).toList(),
      ],
    );
  }
}
