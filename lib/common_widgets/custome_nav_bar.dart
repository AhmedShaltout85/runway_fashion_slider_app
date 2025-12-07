import 'package:flutter/material.dart';

import '../utils/app_assets.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),

      items: <BottomNavigationBarItem>[
        _bottomNavBarItemRefactor(icon: AppAssets.HOME, label: 'Home'),
        _bottomNavBarItemRefactor(icon: AppAssets.LIKE_LIGHT, label: 'Likes'),
        _bottomNavBarItemRefactor(icon: AppAssets.BAG, label: 'Bag'),
        _bottomNavBarItemRefactor(
          icon: AppAssets.PROFILE_THIN,
          label: 'Profile',
        ),
      ],
    );
  }

  BottomNavigationBarItem _bottomNavBarItemRefactor({
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Image(image: AssetImage(icon)),
      label: label,
    );
  }
}
