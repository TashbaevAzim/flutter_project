import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senior_project/routes/search_auto_result.dart';
import 'package:senior_project/style.dart';
import 'package:senior_project/textFieldContainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(bodyText1: TextStyle(color: kBodyTextColor),

        ),
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
    @override
    HomePage createState() => HomePage();
}

int curIndex = 0;

class HomePage extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Главная"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Объявления"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            title: Text("Избранное"),
          ),
        ],
        onTap: (index) {
          setState(() {
            curIndex = index;
          });
        },
      ),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              padding: EdgeInsets.only(left: 40, top: 30, right: 70),
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
                            top: 40,
                            left: 90,
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

// class BottomNavigationBar extends StatelessWidget {
//   const BottomNavigationBar({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
//       height: 70,
//       color: Colors.blue[800],
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           BottomNavigationItem(
//             title: "Главная",
//             svgIcon: "assets/icons/home.svg",
//             isActive: true,
//           ),
//           BottomNavigationItem(
//             title: "Объявления",
//             svgIcon: "assets/icons/search.svg",
//           ),
//           BottomNavigationItem(
//             title: "Избранное",
//             svgIcon: "assets/icons/bookmark.svg",
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class BottomNavigationItem extends StatelessWidget {
//   final String svgIcon;
//   final String title;
//   final Function click;
//   final bool isActive;
//   const BottomNavigationItem({
//     Key key, this.svgIcon, this.title, this.click, this.isActive = false,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: click,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           SvgPicture.asset(
//             svgIcon,
//               color: isActive ? kTitleTextColor : kBackgroundColor
//           ),
//           Text(
//             title,
//             style: TextStyle(color: isActive ? kTitleTextColor : kBackgroundColor),
//           ),
//         ],
//       ),
//     );
//   }
// }

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