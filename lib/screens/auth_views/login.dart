import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialdanz_views/themes/colors_palete.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: purpelBlueGradient,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(
            children: [
              Positioned(
                top: 1.5,
                left: 1.5,
                child: Container(
                  padding: const EdgeInsets.all((10)),
                  child: SvgPicture.asset(
                    '../images/BaseLogo.svg',
                    width: 50,
                    height: 50,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all((10)),
                child: SvgPicture.asset(
                  '../images/SocialDanzLogo.svg',
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          const Text(
            'SocialDanz',
            style: TextStyle(fontFamily: 'Ubuntu', color: light, fontSize: 32),
          ),
          const SizedBox(
            height: 48,
          ),
          const SizedBox(
            width: 300,
            child: TextField(
                style: TextStyle(color: light),
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: light),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: light, width: 2)),
                    hintText: 'email',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: blueSky, width: 2.5)))),
          ),
          const SizedBox(
            height: 24,
          ),
          const SizedBox(
            width: 300,
            child: TextField(
                style: TextStyle(color: light),
                obscureText: true,
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: light),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: light, width: 2)),
                    hintText: 'password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        borderSide: BorderSide(color: blueSky, width: 2.5)))),
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 42),
                child: SizedBox(
                  height: 50,
                  width: 140,
                  child: OutlinedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: light,
                        side: const BorderSide(color: light, width: 2.5)),
                    child: const Icon(Icons.facebook),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: SizedBox(
                  height: 50,
                  width: 140,
                  child: OutlinedButton(
                    onPressed: () => {},
                    style: ElevatedButton.styleFrom(
                        foregroundColor: light,
                        side: const BorderSide(color: light, width: 2.5)),
                    child: const Icon(Icons.facebook),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            margin: const EdgeInsets.all(24),
            height: 40,
            width: 100,
            child: ElevatedButton(
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: pinkyRed, foregroundColor: light),
              child: const Text('login'),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget hola() {
  return 
  
  
  ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      elevation: 20,
        backgroundColor: Colors.amber[600],
        shape: const RoundedRectangleBorder()),
    child: const Text('Press Me!!!'),
  );



}
