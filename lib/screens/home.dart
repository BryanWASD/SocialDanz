import 'package:flutter/material.dart';
import 'package:socialdanz_views/screens/auth_views/login.dart';
import 'package:socialdanz_views/screens/groups_screens/calendar_view.dart';
import 'package:socialdanz_views/screens/groups_screens/your_groups_empty.dart';
import 'package:socialdanz_views/themes/colors_palete.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const Login(),
    const NoGroupsScree(),
    const CalendarView(),
    const NoGroupsScree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            Navigator(
              onGenerateRoute: (RouteSettings settings) {
                return MaterialPageRoute(
                  builder: (BuildContext context) {
                    return _children[_currentIndex];
                  },
                );
              },
            ),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
              onTap: onTabTapped,
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
        ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
