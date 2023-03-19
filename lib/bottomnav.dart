import 'package:flutter/material.dart';
import 'package:mine/pages/bottompages/homepage.dart';
import 'package:mine/pages/bottompages/favcrop.dart';
import 'package:mine/pages/bottompages/market.dart';
import 'package:mine/pages/bottompages/comm.dart';
import 'package:mine/pages/bottompages/profile.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BottomPageState createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    const Home(),
    const Fav(),
    const Market(),
    const Comm(),
    const Profile(),
  ];

  void _onitemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Color.fromARGB(255, 40, 49, 27),
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onitemTapped,
        backgroundColor: Colors.white, //Color.fromARGB(255, 127, 164, 101),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Your Crops',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'You',
          )
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 85, 139, 47),
        iconSize: 24,
        elevation: 30,
        //elevation: 5,
      ),
    );
  }
}
