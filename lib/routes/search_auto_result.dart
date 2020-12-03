import 'package:flutter/material.dart';

class SearchAutoResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Результаты поиска"),
        backgroundColor: Colors.blue[800],
        centerTitle: true,
        elevation: 8.0,

      ),
        body: Container(
          alignment: Alignment.center,
          child: Text(
            "По данному номеру авто не обнаружено.",
            style: TextStyle(
            fontSize: 17,
            ),
          ),
        ) //
    );
  }
}
