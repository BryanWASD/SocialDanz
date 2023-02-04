import 'package:flutter/material.dart';
import 'package:socialdanz_views/themes/colors_palete.dart';

class DanzBottomNavigationBar extends StatelessWidget {
  const DanzBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
          fixedColor: kingBlue,
          backgroundColor: whiteBlue,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.groups_outlined,
                  color: gray,
                ),
                label: "groups"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.map_outlined,
                  color: gray,
                ),
                label: 'map'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_outlined,
                  color: gray,
                ),
                label: 'settings'),
          ]),
    );
  }
}
