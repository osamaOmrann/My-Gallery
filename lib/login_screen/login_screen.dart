import 'package:flutter/material.dart';

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
                      children: [
                        Text('LOG IN',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold)),
                        TextFormField(
                          decoration: InputDecoration(hintText: 'User Name'),
                        ),
                        TextFormField(),
                        ElevatedButton(onPressed: () {}, child: Text(''))
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
