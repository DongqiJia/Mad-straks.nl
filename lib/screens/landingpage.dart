import 'package:flutter/material.dart';
import 'package:flutter_straks_dongqi/screens/home_screen.dart';
import 'package:flutter_straks_dongqi/screens/laatste.dart';
import 'package:flutter_straks_dongqi/screens/meer.dart';
import 'package:flutter_straks_dongqi/screens/voorkeur.dart';

class Landingpage extends StatefulWidget {
  const Landingpage({super.key});

  @override
  State<Landingpage> createState() => _LandingpageState();
}

class _LandingpageState extends State<Landingpage> {
  int _currentIndex = 0;
  List<Widget> body = const [
    HomeScreen(),
    Laatste(),
    Voorkeur(),
    Meer(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[_currentIndex],
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(color: Colors.black),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor: Colors.red,
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.grey.shade500,
                icon: Icon(Icons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.av_timer), label: "Laatste"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Voorkeur"),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), label: "Meer"),
          ],
        ),
      ),
    );
  }
}
