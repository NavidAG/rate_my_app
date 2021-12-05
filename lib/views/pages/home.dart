import 'package:flutter/material.dart';
import 'package:rate_my_app/views/pages/tabs/dashboard.dart';
import 'package:rate_my_app/views/pages/login/intro_page.dart';
import 'package:rate_my_app/views/pages/tabs/profile_page.dart';
import 'package:rate_my_app/views/pages/tabs/search_page.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'داشبورد',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'جستجو',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'پروفایل',
          ),
        ],
        onTap: (selectedIndex) {
          setState(() {
            _currentIndex = selectedIndex;
          });
        },
      ),
      body: _body(),
    );
  }

  _body() {
    if (_currentIndex == 0) return DashboardPage();
    if (_currentIndex == 1) return SearchPage();
    if (_currentIndex == 2) return ProfilePage();
    // if (_currentIndex == 3) return Container();
  }
}
