import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Screens/mobile.dart';
import 'package:tic_tac_toe/Screens/tablet.dart';
import 'package:tic_tac_toe/Views/Tablet/tablet_registration_page.dart';
import 'package:tic_tac_toe/Views/Mobile/registration_page.dart';

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

class RegistrationResponsiveness extends StatefulWidget {
  const RegistrationResponsiveness({ Key? key }) : super(key: key);

  @override
  State<RegistrationResponsiveness> createState() => _RegistrationResponsivenessState();
}

class _RegistrationResponsivenessState extends State<RegistrationResponsiveness> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        if (constraints.maxWidth < 600) {
          return const RegistrationPage();
        }
        else {
          return const TabletRegistrationPage();
        }
      })
    );
  }
}