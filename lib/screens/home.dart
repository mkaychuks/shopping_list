import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:shopping_list_ui/screens/profile_screen.dart';
import 'package:shopping_list_ui/screens/shopping_cart.dart';
import 'package:shopping_list_ui/screens/shopping_list.dart';
import 'package:shopping_list_ui/widgets/nav_bar_badge.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int _selectedIndex = 0; // this manages the current index

  // a function that handles state of the index of the navbar index
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // the list that handles the name of the appbar
  final List<String> _appBarName = [
    "Home",
    "Search",
    "Cart",
    "Shopping list",
    "Profile"
  ];

  final List<dynamic> _screens = const [
    Center(
      child: Text('HomeScreen'),
    ),
    Center(
      child: Text('Search'),
    ),
    ShoppingCartScreen(),
    ShoppingListScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 18.0, letterSpacing: 1.5),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          _appBarName[
              _selectedIndex], // change the appbar name as regards the selectedindex
          style: GoogleFonts.notoSans(fontWeight: FontWeight.w600),
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        onTap: _onItemTapped, // the function created earlier on..
        currentIndex: _selectedIndex, // currentIndex map.
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Home',
            activeIcon: Icon(Icons.shopping_bag),
          ),
          const BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: NavBarItemWithBadge(iconName: Icons.shopping_cart),
              label: 'Cart',
              activeIcon: const Icon(Icons.shopping_cart_checkout)),
          const BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_list_regular),
            label: 'Bookmarks',
            activeIcon:
                Icon(FluentSystemIcons.ic_fluent_reading_list_add_filled),
          ),
          const BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            label: 'Profile',
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
          ),
        ],
      ),
    );
  }
}
