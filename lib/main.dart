import 'package:flutter/material.dart';
import 'package:socialdanz_views/screens/home.dart';

void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Material App',
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             height: double.infinity,
//             width: double.infinity,
//             color: whiteBlue,
//             child: const Center(
//               child: Text(
//                 'Hola',
//               ),
//             ),
//           ),
//         ),
//         bottomNavigationBar: const DanzBottomNavigationBar(),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, title: 'SocialDanz', home: Home());
  }
}
