import 'package:flutter/material.dart';
import 'package:my_gallery/login_screen/login_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image:
                      AssetImage('assets/images/homescreen_background.png'))),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 20, left: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Column(
                        children: [
                          Text(
                            'Welcome',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          Text(
                            'Mina',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile_icon.jpg'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .035,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, LogInScreen.routeName);
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 28, vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            Image.asset('assets/images/logout_ic.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .02,
                            ),
                            Text(
                              'log out',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        primary: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: () {
                        isVisible = !isVisible;
                        setState(() {});
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 28, vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          children: [
                            Image.asset('assets/images/upload_ic.png'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .02,
                            ),
                            Text(
                              'upload',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                Expanded(
                    child: GridView.count(
                  crossAxisCount: 3,
                  children: myImages,
                ))
              ],
            ),
          ),
        ),
        Center(
          child: Visibility(
            visible: isVisible,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * .35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xFFFFFFFF).withOpacity(.75)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEFD8F9),
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/gallery.png',
                          height: 40,
                          width: 40,
                        ),
                        Text(
                          'Gallery',
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFEBF6FF),
                        borderRadius: BorderRadius.circular(20)),
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'assets/images/camera.png',
                          height: 40,
                          width: 40,
                        ),
                        Text(
                          'Camera',
                          style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

List<Widget> myImages = [
  Image.asset('assets/images/1st.png'),
  Image.asset('assets/images/2nd.png'),
  Image.asset('assets/images/3rd.png'),
  Image.asset('assets/images/4th.png'),
  Image.asset('assets/images/5th.png'),
  Image.asset('assets/images/6th.png'),
  Image.asset('assets/images/7th.png'),
  Image.asset('assets/images/8th.png'),
  Image.asset('assets/images/9th.png'),
  Image.asset('assets/images/10th.png'),
  Image.asset('assets/images/11th.png'),
  Image.asset('assets/images/12th.png'),
  Image.asset('assets/images/13th.png'),
  Image.asset('assets/images/14th.png'),
  Image.asset('assets/images/15th.png'),
  Image.asset('assets/images/16th.png'),
  Image.asset('assets/images/17th.png'),
  Image.asset('assets/images/18th.png'),
];
