import 'package:flutter/material.dart';
import 'package:senior_project/routes/search_auto_result.dart';
import '../style.dart';
import '../textFieldContainer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              padding: EdgeInsets.only(left: 45, top: 45, right: 70),
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF1565C0),
                      Color(0xFF11249F),
                    ]
                ),
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                      child: Stack(
                        children: <Widget>[
                          Image.asset("assets/images/mainPage_carImage.png",
                              width: 300
                          ),
                          Positioned(
                            top: 30,
                            left: 80,
                            child: Text("CarInfo KG",
                              style: kHeadingTextStyle.copyWith(
                                color: Colors.yellow[50],
                              ),
                            ),
                          )
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
          Text(
            "Узнайте информацию о любом авто в Кыргызстане.",
            style: TextStyle(
                color: Colors.grey[700],
                fontFamily: "Poppins",
                fontWeight: FontWeight.w200,
                fontSize: 14),
          ),
          TextFieldContainer(child: TextField(
            decoration: InputDecoration(
                icon: Icon(Icons.search),
                hintText: "Введите госномер",
                border: InputBorder.none
            ),
          ),),
          Container(
            height: 50,
            margin: EdgeInsets.symmetric(horizontal: 85),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 20),
                    blurRadius: 20,
                    spreadRadius: -20
                )
              ],
              color: Colors.blue[800],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context){return SearchAutoResult();
                }),
                );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Искать",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kBackgroundColor
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 95);
    path.quadraticBezierTo(
        size.width/2, size.height/2, size.width, size.height - 85);
    path.lineTo(size.width, 0);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
