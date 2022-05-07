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
    Timer(const Duration(seconds: 1), () {
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
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(height: 10,),
            Text(
              'TIC TAC TOA',
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 5,
                shadows: [
                  BoxShadow(
                    color: textColor,
                    blurRadius: 20
                  )
                ]
              ),
            ),
            Text(
              'GAME',
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                letterSpacing: 3,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 20,),
            
          ],
        ),
      ),
      bottomNavigationBar: const LinearProgressIndicator(
        valueColor: AlwaysStoppedAnimation(textColor),
      ),
    );
  }
}
