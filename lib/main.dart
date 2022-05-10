import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/Color/colors.dart';
import 'package:tic_tac_toe/Responsiveness/responsiveness.dart';
import 'package:tic_tac_toe/State_Management/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}


class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context)=> 
            ChangeNotifierProvider(
              create: (context) => AppData(),
              
              child: Consumer<AppData>(
                builder: (context,provider, child) {
                return const Responsiveness(); 
              },
              )
            )
        )
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 15,),
            const Text(
              'TIC TAC TOA',
              style: TextStyle(
                fontSize: 47,
                fontWeight: FontWeight.w900,
                color: Color(0XFFF0CC08),
                letterSpacing: 5,
                shadows: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 10,
                    offset: Offset(1, 2)
                  )
                ]
              ),
            ),
            const Text(
              'GAME',
              style: TextStyle(
                color: backgroundColor,
                fontSize: 19,
                letterSpacing: 3,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 20,),
            Image.asset('src/images/giphy.gif')
          ],
        ),
      ),
      bottomNavigationBar: const LinearProgressIndicator(
        valueColor: AlwaysStoppedAnimation(textColor),
      ),
    );
  }
}
