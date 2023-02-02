import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:socialdanz/main.dart';
import '/utilities/text_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool valor2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/loginGirl.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 200,),
            // Padding(
            //   padding: EdgeInsets.all(20),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: <Widget>[
            //       Text("Login", style: TextStyle(color: Colors.white, fontSize: 40),),
            //       SizedBox(height: 10,),
            //       Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),),
            //     ],
            //   ),
            // ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[

                        Text("Welcome to", style: BlackSubtitle),
                        SizedBox(height: 10,),
                        Text("SocialDanz", style: BlackSubtitle),
                        SizedBox(height: 10,),
                          Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color(0xff4B7AF5),
                                      )
                                    ),
                                    hintText: "Email",
                                    hintStyle: const TextStyle(color: Colors.grey),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff4B7AF5),
                                      )
                                    )
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                ),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Color(0xff4B7AF5),
                                      )
                                    ),
                                    hintText: "Password",
                                    hintStyle: const TextStyle(color: Colors.grey),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xff4B7AF5),
                                      )
                                    )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 40,),
                        Row(
                          children: <Widget>[
                            Text('Remember me'),
                            Checkbox(
                    value: this.valor2, 
                    onChanged: (
                      (value) {
                        setState(() {
                      this.valor2 == false ? this.valor2 = true : this.valor2 = false;
                    });
                  })),
                  SizedBox(width: 40,),
                  Text('Forgot', textAlign: TextAlign.end,),
                  TextButton(onPressed: (){}, child: Text('Password?',textAlign: TextAlign.end,)),
                  ],
              ),
                        SizedBox(height: 40,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Color(0xff4B7AF5), minimumSize: Size(500, 60)),
                          onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Home())
                      ); 
                          },
                            child: Text("Login", style: WhiteSubtitle,),),

                        SizedBox(height: 30,),
                        Text('Not a member?', textAlign: TextAlign.end,),
                        TextButton(onPressed: (){}, 
                        child: Text('Sign up',textAlign: TextAlign.end,)),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}