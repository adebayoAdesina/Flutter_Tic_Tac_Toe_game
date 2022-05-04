import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/mobile.dart';
import 'package:tic_tac_toe/Screens/tablet.dart';

class Responsiveness extends StatefulWidget {
  const Responsiveness({ Key? key }) : super(key: key);

  @override
  State<Responsiveness> createState() => _ResponsivenessState();
}

class _ResponsivenessState extends State<Responsiveness> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileScreen();
        }
        else {
          return const TabletScreen();
        }
      })
    );
  }
}