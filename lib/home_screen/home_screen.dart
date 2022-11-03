import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home Screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/homescreen_background.png'))),
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
            Row(
              children: [
                InkWell(
                  child: Container(
                    color: Colors.white,
                    child: Image.asset('assets/images/logout_field.png'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
