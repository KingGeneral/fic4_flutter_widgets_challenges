import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavbarWidget extends StatefulWidget {
  const BottomNavbarWidget({super.key});

  @override
  State<BottomNavbarWidget> createState() => _BottomNavbarWidgetState();
}

class _BottomNavbarWidgetState extends State<BottomNavbarWidget> {
  final List<Widget> list = const [
    Text('Home'),
    Text('Cart'),
    Text('Favourite'),
    Text('User'),
  ];

  int _selectedIndex = 0;
  List<dynamic> menuItems = [
    {
      'icon': 'assets/icons/home_.svg',
      'label': 'Home',
    },
    {
      'icon': 'assets/icons/cart_.svg',
      'label': 'Cart',
    },
    {
      'icon': 'assets/icons/favorite.svg',
      'label': 'Favorite',
    },
    {
      'icon': 'assets/icons/profile_.svg',
      'label': 'Profile',
    },
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navbar'),
      ),
      body: Center(
        child: list[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black87,
        elevation: 32.0,
        type: BottomNavigationBarType.fixed,
        items: menuItems.map((i) {
          return BottomNavigationBarItem(
            activeIcon: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: SvgPicture.asset(
                i['icon'],
                color: Colors.white,
              ),
            ),
            icon: SvgPicture.asset(
              i['icon'],
              color: Colors.grey,
            ),
            label: i['label'],
          );
        }).toList(),
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
