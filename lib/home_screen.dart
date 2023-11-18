import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp_flutter/favorite_screen.dart';
import 'package:foodapp_flutter/notification_screen.dart';
import 'package:foodapp_flutter/order_history_screen.dart';
import 'package:foodapp_flutter/order_screen.dart';
import 'package:foodapp_flutter/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: const <Widget>[
          OrderScreen(),
          OrderHistoryScreen(),
          FavoriteScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_ring.svg",
              color:
                  _selectedIndex == 0 ? Color(0xFFDB166E) : Color(0xFFC4C4C4),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_history.svg",
              color:
                  _selectedIndex == 1 ? Color(0xFFDB166E) : Color(0xFFC4C4C4),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_favorite.svg",
              color:
                  _selectedIndex == 2 ? Color(0xFFDB166E) : Color(0xFFC4C4C4),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_bell.svg",
              color:
                  _selectedIndex == 3 ? Color(0xFFDB166E) : Color(0xFFC4C4C4),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/vectors/ic_profile.svg",
              color:
                  _selectedIndex == 4 ? Color(0xFFDB166E) : Color(0xFFC4C4C4),
            ),
            label: "",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          print("vietanh $index");
          setState(() {
            _selectedIndex = index;
            controller.jumpToPage(index);
          });
        },
        elevation: 5,
      ),
    );
  }
}
