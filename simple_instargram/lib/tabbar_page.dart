import 'package:flutter/material.dart';
import 'package:simple_instargram/account_page.dart';
import 'package:simple_instargram/home_page.dart';

class TabbarPage extends StatefulWidget {
  @override
  _TabbarPageState createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  int _selectedIndex = 0;
  List _pages = [
    HomePage(),
    Text("page2"),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pages[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
      ]),
    );
  }

  void _onItemTapped(int selectedIndex) {
    setState(() {
      _selectedIndex = selectedIndex;
    });
  }
}
