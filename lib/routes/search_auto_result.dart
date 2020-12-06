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

        body: Card(
          child: Container(
            margin: EdgeInsets.all(20),
            height: 70,
            width: 400,
            // color: Colors.blue[800],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Информация об авто",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
                Text("01KG123ACP",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
          elevation: 15.0,
        ),
    );

        // body: Card(
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(0.0),
        //   ),
        //   elevation: 7.0,
        //   child: Container(
        //     width: MediaQuery.of(context).size.width,
        //     padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: <Widget>[
        //         Row(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: <Widget>[
        //             SizedBox(width: 5.0),
        //             Column(
        //               crossAxisAlignment: CrossAxisAlignment.start,
        //               children: <Widget>[
        //                 Icon(
        //                   Icons.car_repair,
        //                 ),
        //                 Text(
        //                   "Информация об авто",
        //                   style: TextStyle(
        //                     color: Colors.blue[800],
        //                     fontSize: 19.0,
        //                     fontWeight: FontWeight.bold,
        //                   ),
        //                 )
        //               ],
        //             )
        //           ],
        //         ),
        //         Container(),
        //       ],
        //     ),
        //   ),
        //
        // ),

        // body: Container(
        //   alignment: Alignment.center,
        //   child: Text(
        //     "По данному номеру авто не обнаружено.",
        //     style: TextStyle(
        //     fontSize: 17,
        //     ),
        //   ),
        // ), //
  }
}
