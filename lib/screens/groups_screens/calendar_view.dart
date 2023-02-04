import 'package:flutter/material.dart';
import 'package:socialdanz_views/themes/colors_palete.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 64, left: 42),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Welcomo Adrian!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 42, bottom: 24),
            child: Row(
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'January 2023',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: kingBlue),
                  ),
                ),
                SizedBox(width: 24),
                Icon(
                  Icons.calendar_month_outlined,
                  size: 42,
                  color: kingBlue,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.navigate_before,
                color: kingBlue,
                size: 40,
              ),
              Container(
                  // margin: const EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 207, 205, 205),
                            blurRadius: 6,
                            spreadRadius: 0.2,
                            offset: Offset(1, 1))
                      ],
                      color: blueLight,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Tue\n 15',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ))),
              Container(
                  // margin: const EdgeInsets.only(left: 20, right: 20),
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 205, 206, 207),
                            blurRadius: 10,
                            spreadRadius: 0.2,
                            offset: Offset(1, 1))
                      ],
                      color: blueLight,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Wed\n  16',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, color: kingBlue),
                      ))),
              Container(
                  // margin: const EdgeInsets.only(left: 20, right: 20),
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 207, 205, 205),
                            blurRadius: 6,
                            spreadRadius: 0.2,
                            offset: Offset(1, 1))
                      ],
                      color: blueLight,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Thu\n 17',
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ))),
              const Icon(
                Icons.navigate_next,
                color: kingBlue,
                size: 40,
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(top: 32),
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 207, 205, 205),
                        blurRadius: 12,
                        spreadRadius: 0.1,
                        offset: Offset(1, 1))
                  ],
                  color: light,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: ListView(
                padding: const EdgeInsets.only(top: 30),
                children: [
                  Container(
                      height: 250,
                      margin: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          color: kingBlue,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.school,
                                  size: 30,
                                  color: light,
                                ),
                                Text(
                                  'Introduccion to Bachata',
                                  style: TextStyle(fontSize: 16, color: light),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.note_alt_rounded,
                                  size: 30,
                                  color: light,
                                ),
                                Text(
                                  'Bachata',
                                  style: TextStyle(fontSize: 16, color: light),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.person,
                                  size: 30,
                                  color: light,
                                ),
                                Text(
                                  'Bachata group',
                                  style: TextStyle(fontSize: 16, color: light),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.calendar_month_outlined,
                                  size: 30,
                                  color: light,
                                ),
                                Text(
                                  'Wendnesday 16\nfrom 8:00 am to 9:00 am',
                                  style: TextStyle(fontSize: 16, color: light),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Icon(
                                  Icons.info_outline,
                                  size: 30,
                                  color: light,
                                ),
                                Text(
                                  'you need to subcribe\n to class',
                                  style: TextStyle(fontSize: 16, color: light),
                                ),
                              ],
                            )
                          ])),
                  Container(
                      height: 250,
                      margin: const EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          color: blueLight,
                          borderRadius: BorderRadius.circular(20)),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.add_circle,
                        size: 48,
                        color: kingBlue,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
