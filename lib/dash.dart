import 'package:earnify/home.dart';
import 'package:earnify/profile.dart';
import 'package:earnify/referral.dart';
import 'package:earnify/social.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'colors.dart' as color;

class Dashboard2 extends StatefulWidget {
  const Dashboard2({Key? key}) : super(key: key);

  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  final String message = '';
  int myIndex = 0;
  List<Widget> widgetList = const [Home(), Social(), Referral(), Profile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        child: GNav(
            tabBackgroundColor: Color.fromARGB(255, 238, 238, 238),
            padding: EdgeInsets.all(16),
            textSize: 10,
            iconSize: 18,
            gap: 5,
            textStyle: TextStyle(fontWeight: FontWeight.w300),
            onTabChange: (index) {
              setState(() {
                myIndex = index;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home_rounded,
                text: 'Home',
              ),
              GButton(
                icon: Icons.wallet,
                text: 'Earn',
              ),
              GButton(icon: Icons.people, text: 'Referrals'),
              GButton(icon: Icons.person, text: 'Account'),
            ]),
      ),
      body: IndexedStack(
        children: widgetList,
        index: myIndex,
      ),
    );
  }
}
