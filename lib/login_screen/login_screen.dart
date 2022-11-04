import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class LogInScreen extends StatelessWidget {
  static const String routeName = 'Log In Screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/login_background.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text('My',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold))),
                Center(
                    child: Text('Gallery',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold))),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white.withOpacity(.5)),
                  height: size.height * .5,
                  width: size.width * .8,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Center(
                          child: Text('LOG IN',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(70),
                              ),
                              filled: true,
                              fillColor: Color(0xFFF7F7F7),
                              hintText: 'User Name'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(70),
                              ),
                              filled: true,
                              fillColor: Color(0xFFF7F7F7),
                              hintText: 'Password'),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF7BB3FF)),
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreen.routeName);
                            },
                            child: Text('SUBMIT'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
