import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/login.dart';
import 'utilities/color_schemes.g.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const LoginPage(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _paginaActual = 0;

  final List <Widget> _paginas = const [
    NoClasses(),
    PageSearch(),
    PageGroups(),
    PageProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState((){
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xffEFF3FF),
        // selectedItemColor: const Color(0xff4B7AF5),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.class_outlined),label: 'Classes'),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.group_outlined), label: 'Groups'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Profile'),
        ],
          ),
        body: _paginas[_paginaActual],
    );
  }
}    




class PageClasses extends StatelessWidget {
  const PageClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Tilin'),
    );
  }
}


class PageSearch extends StatelessWidget {
  const PageSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Ete setch'),
    );
  }
}



class PageGroups extends StatelessWidget {
  const PageGroups({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('El pepe'),
    );
  }
}



class PageProfile extends StatelessWidget {
  const PageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Potasio'),
    );
  }
}


class NoClasses extends StatelessWidget {
  const NoClasses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(
        child: Container(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: Text('Welcome Guzman!', 
                            style: GoogleFonts.lexendDeca(fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            child: TextButton.icon(onPressed: (){}, label: Text('NOVEMBER', 
                            style: GoogleFonts.lexendDeca(fontWeight: FontWeight.w600),
                            ), 
                            icon: Icon(Icons.calendar_month),),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.navigate_before)),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FloatingActionButton(
                        onPressed: (){},
                        child: Text('TUE\n15',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lexendDeca(fontWeight: FontWeight.bold),
                        ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox.fromSize(
                          size: Size.square(70),
                          child: FloatingActionButton(
                            foregroundColor: Color(0xff4B7AF5),
                            onPressed: (){},
                          child: Text('WED\n16',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lexendDeca(fontWeight: FontWeight.bold),
                          ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: FloatingActionButton(onPressed: (){},
                        child: Text('THU\n17',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.lexendDeca(fontWeight: FontWeight.bold),
                        ),
                        ),
                      ),

                      IconButton(onPressed: (){}, icon: const Icon(Icons.navigate_next)),
                      
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset('assets/illustrations/inbox.svg',
                  height: 150,
                  width: 150,),
                  SizedBox(height: 8),
                  Text('No classes yet', 
                  style: GoogleFonts.lexendDeca(
                  fontWeight: FontWeight.w600,
                  fontSize: 28),
                  ),
                  Text('Join a group and wait for classes', textAlign: TextAlign.center,
                  style: GoogleFonts.lexendDeca(),),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}