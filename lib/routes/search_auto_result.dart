import 'package:flutter/material.dart';
import 'package:senior_project/style.dart';

class SearchAutoResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(110),
        child: AppBar(
          centerTitle: true,
          title: Text(
            "Результаты поиска",
            style: TextStyle(fontSize: 23),
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text(
          "По данному номеру авто не обнаружено.",
          style: TextStyle(
              fontSize: 17,
          ),
        ),
      ),
      // body: Stack(
      //   children: <Widget>[
      //     Container(
      //       height: size.height * 0.13,
      //       decoration: BoxDecoration(
      //         color: Colors.blue[800],
      //       ),
      //     ),
      //     SafeArea(
      //       child: Container(
      //         alignment: Alignment.center,
      //         child: Padding(
      //           padding: const EdgeInsets.symmetric(horizontal: 20),
      //           child: Text(
      //             "Результаты поиска",
      //             style: TextStyle(
      //               color: kBackgroundColor,
      //               fontWeight: FontWeight.bold,
      //               fontSize: 18,
      //
      //             ),
      //           ),
      //         ),
      //       ),
      //
      //     )
      //   ],
      // ),
    );
  }
}
