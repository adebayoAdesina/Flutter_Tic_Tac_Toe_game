import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/Color/colors.dart';
import 'package:tic_tac_toe/Views/game.dart';

import '../../State_Management/provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
        create: ((context) => AppData()),
        builder: (context, child) {
          return Scaffold(
            body: SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('src/images/R-removebg-preview.png'),
                        fit: BoxFit.cover,
                        alignment: Alignment.bottomCenter,
                        opacity: 0.18)),
                child: SafeArea(
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * 0.10,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Player One',
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Text('Please fill this section'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const Text(
                                    'Name:',
                                    style: TextStyle(color: textColor),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: TextField(
                                        onChanged: ((value) {
                                          print(size.width);
                                          context.read<AppData>().playersDetail(
                                              value, 'playerOneName');
                                        }),
                                        maxLength: 10,
                                        decoration: const InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 0,
                                                    horizontal: 10),
                                            hintText: 'John',
                                            hintStyle: TextStyle(
                                                color: Colors.black38),
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Using:',
                                    style: TextStyle(color: textColor),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: TextField(
                                        onChanged: ((value) {
                                          context.read<AppData>().playersDetail(
                                              value, 'playerOneUsing');
                                        }),
                                        maxLength: 1,
                                        decoration: const InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 0,
                                                    horizontal: 10),
                                            hintText: 'O',
                                            hintStyle: TextStyle(
                                                color: Colors.black38),
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: size.height * 0.16,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Player Two',
                              style: TextStyle(
                                  color: textColor,
                                  fontSize: 35,
                                  fontWeight: FontWeight.w600),
                            ),
                            const Text('Please fill this section'),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  const Text(
                                    'Name:',
                                    style: TextStyle(color: textColor),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: TextField(
                                        onChanged: ((value) {
                                          context.read<AppData>().playersDetail(
                                              value, 'playerTwoName');
                                        }),
                                        maxLength: 10,
                                        decoration: const InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 0,
                                                    horizontal: 10),
                                            hintText: 'Beloved',
                                            hintStyle: TextStyle(
                                                color: Colors.black38),
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Text(
                                    'Using:',
                                    style: TextStyle(color: textColor),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20.0),
                                      child: TextField(
                                        onChanged: (value) {
                                          context.read<AppData>().playersDetail(
                                              value, 'playerTwoUsing');
                                        },
                                        maxLength: 1,
                                        decoration: const InputDecoration(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 0,
                                                    horizontal: 10),
                                            hintText: 'X',
                                            hintStyle: TextStyle(
                                                color: Colors.black38),
                                            focusedBorder: InputBorder.none),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            bottomNavigationBar: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(elevation: 50, primary: textColor),
                onPressed: () {
                  // var read = context.read<AppData>();
                  var nameOfPlayerOne = AppData.playerOneName == '';
                  var usingOfPlayerOne = AppData.playerOneUsing == '';
                  var nameOfPlayerTwo = AppData.playerTwoName == '';
                  var usingOfPlayerTwo = AppData.playerTwoUsing == '';
                  Timer(const Duration(seconds: 1), (() {
                    if (AppData.playerOneName != '' &&
                        AppData.playerOneUsing != '' &&
                        AppData.playerTwoName != '' &&
                        AppData.playerTwoUsing != '') {
                      print(AppData.playerOneName);
                      print(AppData.playerOneUsing);
                      print(AppData.playerTwoName);
                      print(AppData.playerTwoUsing);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => const Game()));
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              elevation: 20,
                              titleTextStyle: const TextStyle(
                                  color: danger,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                              title: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                          nameOfPlayerOne
                                              ? Icons.warning_amber_rounded
                                              : Icons.done,
                                          color: nameOfPlayerOne
                                              ? danger
                                              : textColor,
                                          size: 20),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                          nameOfPlayerOne
                                              ? 'Player One Name is empty'
                                              : 'Player One Name is Filled',
                                          style: TextStyle(
                                              color: nameOfPlayerOne
                                                  ? danger
                                                  : textColor)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                          usingOfPlayerOne
                                              ? Icons.warning_amber_rounded
                                              : Icons.done,
                                          color: usingOfPlayerOne
                                              ? danger
                                              : textColor,
                                          size: 20),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                          usingOfPlayerOne
                                              ? 'Player One Using is empty'
                                              : 'Player One Using is Filled',
                                          style: TextStyle(
                                              color: usingOfPlayerOne
                                                  ? danger
                                                  : textColor)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                          nameOfPlayerTwo
                                              ? Icons.warning_amber_rounded
                                              : Icons.done,
                                          color: nameOfPlayerTwo
                                              ? danger
                                              : textColor,
                                          size: 20),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                          nameOfPlayerTwo
                                              ? 'Player Two Name is empty'
                                              : 'Player Two Name is Filled',
                                          style: TextStyle(
                                              color: nameOfPlayerTwo
                                                  ? danger
                                                  : textColor)),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                          usingOfPlayerTwo
                                              ? Icons.warning_amber_rounded
                                              : Icons.done,
                                          color: usingOfPlayerTwo
                                              ? danger
                                              : textColor,
                                          size: 20),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                          usingOfPlayerTwo
                                              ? 'Player Two Using is empty'
                                              : 'Player Two Using is Filled',
                                          style: TextStyle(
                                              color: usingOfPlayerTwo
                                                  ? danger
                                                  : textColor)),
                                    ],
                                  ),
                                ],
                              ),
                              actions: [
                                Center(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: textColor),
                                      onPressed: (() {
                                        Navigator.pop(context);
                                      }),
                                      child: const Text('Ok')),
                                )
                              ],
                            );
                          });
                    }
                  }));
                },
                child: const Text(
                  'Save & Play',
                  style: TextStyle(
                      // color: textColor
                      ),
                )),
          );
        });
  }
}
