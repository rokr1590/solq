import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:soloq/pages/HomeScreen.dart';
import 'package:soloq/routes/app_routes.dart';
import 'package:soloq/utils/image_constant.dart';
import 'package:soloq/utils/size_utils.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  final navigation = [HomeScreen()];
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigation[_selectedTab.index],
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: getPadding(bottom: 10),
        child: DotNavigationBar(
            margin: const EdgeInsets.only(left: 10, right: 10),
            currentIndex: _SelectedTab.values.indexOf(_selectedTab),
            dotIndicatorColor: Colors.black,
            enablePaddingAnimation: true,
            backgroundColor: Colors.grey.shade600,
            unselectedItemColor: Colors.white,
            // enableFloatingNavBar: false,
            onTap: _handleIndexChanged,
            items:[
              DotNavigationBarItem(
                  icon: const Icon(Icons.home),
                  selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                  icon: const Icon(Icons.access_alarm_outlined),//Image.asset(ImageConstant.iconSurvey),
                  selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.accessibility_sharp),//Image.asset(ImageConstant.iconBag),
                selectedColor: Colors.white,
              ),
              DotNavigationBarItem(
                icon: const Icon(Icons.person),
                selectedColor: Colors.white,
              ),
            ]
        ),
      ),
    );
  }
}
enum _SelectedTab { home, favorite, search, person }
