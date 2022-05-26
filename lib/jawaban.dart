import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  //const Jawaban({Key key}) : super(key: key);
  Function pilihJawaban;
  String jawabanText;

  Jawaban(this.pilihJawaban, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: pilihJawaban,
        style: ElevatedButton.styleFrom(primary: Colors.green),
        child: Text(jawabanText),
      ),
    );
  }
}
