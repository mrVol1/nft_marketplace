import 'package:flutter/material.dart';
import 'package:nft_marketplace/consts/colors.dart';
import 'package:nft_marketplace/main_app/screens/analytics.dart';
import 'package:nft_marketplace/main_app/screens/home_page.dart';
import 'package:nft_marketplace/main_app/screens/profile.dart';
import 'package:nft_marketplace/main_app/screens/search_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final Widget _homePage = const HomePage();

  final Widget _searchPage = const SearchPage();

  final Widget _analyticsPage = const AnalyticsPage();

  final Widget _profilePage = const ProfilePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColors.darkColor,
      body: getBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(
            color: Color(0xFF1D9BF0), opacity: 1.0, size: 30),
        unselectedIconTheme: IconThemeData(
            color: ConstantColors.grayLightColor, opacity: 0.5, size: 25),
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        backgroundColor: ConstantColors.grayColor,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.analytics_outlined,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget getBody() {
    if (selectedIndex == 0) {
      return _homePage;
    } else if (selectedIndex == 1) {
      return _searchPage;
    } else if (selectedIndex == 2) {
      return _analyticsPage;
    } else {
      return _profilePage;
    }
  }
}
