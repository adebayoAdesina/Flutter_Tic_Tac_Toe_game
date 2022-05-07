import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/Color/colors.dart';

import '../State_Management/provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({ Key? key }) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}
class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: ((context) => AppData()),
      builder: (context, child){
        return Scaffold(
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height*0.10,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Player One',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 35,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      const Text(
                        'Please fill this section'
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Name:',
                              style: TextStyle(
                                color: textColor
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: TextField(
                                  onChanged: ((value) {
                                    context.read<AppData>().playersDetail(value, 'playerOneName');
                                  }),
                                  maxLength: 10,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 10
                                    ),
                                    hintText: 'John',
                                    hintStyle: TextStyle(
                                      color: Color(0XFFCDCDCD)
                                    ),
                                    focusedBorder: InputBorder.none
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              'Using:',
                              style: TextStyle(
                                color: textColor
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: TextField(
                                  onChanged: ((value) {
                                    context.read<AppData>().playersDetail(value, 'playerOneUsing');
                                  }),
                                  maxLength: 1,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 10
                                    ),
                                    hintText: 'O',
                                    hintStyle: TextStyle(
                                      color: Color(0XFFCDCDCD)
                                    ),
                                    focusedBorder: InputBorder.none
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: size.height*0.16,
                    child: Consumer<AppData>(
                    builder: ((context, value, child) {
                      return Column(
                        children: [
                          Text(value.playerOneName == '' ? 'load': value.playerTwoName),
                          Text(value.playerOneName == '' ? 'load': value.playerTwoUsing),
                          Text(value.playerOneName == '' ? 'load': value.playerOneName),
                          Text(value.playerOneName == '' ? 'load': value.playerOneUsing),
                        ],
                      );
                    }),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        'Player Two',
                        style: TextStyle(
                          color: textColor,
                          fontSize: 35,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      const Text(
                        'Please fill this section'
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Name:',
                              style: TextStyle(
                                color: textColor
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: TextField(
                                  onChanged: ((value) {
                                    context.read<AppData>().playersDetail(value, 'playerTwoName');
                                  }),
                                  maxLength: 10,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 10
                                    ),
                                    hintText: 'Beloved',
                                    hintStyle: TextStyle(
                                      color: Color(0XFFCDCDCD)
                                    ),
                                    focusedBorder: InputBorder.none
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              'Using:',
                              style: TextStyle(
                                color: textColor
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: TextField(
                                  onChanged: (value) {
                                    context.read<AppData>().playersDetail(value, 'playerTwoUsing');
                                  },
                                  maxLength: 1,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: 0,
                                      horizontal: 10
                                    ),
                                    hintText: 'X',
                                    hintStyle: TextStyle(
                                      color: Color(0XFFCDCDCD)
                                    ),
                                    focusedBorder: InputBorder.none
                                  ),
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
        bottomNavigationBar: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 50,
            primary: textColor
          ),
          onPressed: (){
            var read = context.read<AppData>();
            Timer(
              const Duration(
                seconds: 4
              ), (() {
                if (
                  read.playerOneName != '' && read.playerOneUsing != '' &&
                  read.playerTwoName != '' && read.playerTwoUsing != ''
                ) {
                  print(read.playerOneName);
                  print(read.playerOneUsing);
                  print(read.playerTwoName);
                  print(read.playerOneUsing);
                } else {
                }
              }));
          }, 
          child: const Text(
            'Save & Play',
            style: TextStyle(
              // color: textColor
            ),
          )
        ),
      );
      }
      
    );
  }
}