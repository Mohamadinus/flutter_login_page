// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        top: true,
        bottom: true,
        left: false,
        right: false,
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/background.webp"),
                  fit: BoxFit.cover,
                ),
              )),
              Container(
                child: Center(
                    child: Text(
                  "Login",
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 53,
                    color: Colors.white,
                  ),
                )),
                margin: EdgeInsets.only(bottom: 520),
              ),
              Padding(
                padding: EdgeInsets.only(top: 520, right: 30, left: 30),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email or Phone Number",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: const [
                            Colors.red,
                            Colors.orange,
                            Colors.redAccent
                          ])),
                      child: Center(
                        child: Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      "Forgot Password",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
