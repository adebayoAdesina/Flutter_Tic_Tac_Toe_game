import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tic_tac_toe/Color/colors.dart';
import 'package:tic_tac_toe/Responsiveness/responsiveness.dart';
import 'package:tic_tac_toe/Views/Mobile/registration_page.dart';
import 'package:tic_tac_toe/Views/scores.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: textColor,
      body:  SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: SafeArea(
          child: Center(
            child:  Column(
              children: [
                SizedBox(
                  height: size.height * 0.35,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: whiteColor,
                    // shadowColor: 
                  ),
                  onPressed: (() {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (_) => const RegistrationResponsiveness()
                      )
                    );
                  }),
                  child: const Text(
                    'Play',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20
                    ),
                  )
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: whiteColor,
                  ),
                  onPressed: (() {
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (_) => const Scores()
                      )
                    );
                  }),
                  child: const Text(
                    'Scores',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20
                    ),
                  )
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: whiteColor,
                  ),
                  onPressed: (() {
                    
                  }),
                  child: const Text(
                    'Help',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20
                    ),
                  )
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: whiteColor,
                  ),
                  onPressed: (() {
                    showDialog(
                      context: context, 
                      builder: (context)=> AlertDialog(
                        elevation: 24.0,
                        title: const Text(
                          'Are you sure you want to quit?'
                        ),
                        actions: [
                          FloatingActionButton(
                            elevation: 0,
                            backgroundColor: whiteColor,
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            child: const Text(
                              'No',
                              style: TextStyle(
                                color: textColor,
                              ),
                            ),
                            ),
                          FloatingActionButton(
                            elevation: 0,
                            backgroundColor: whiteColor,
                            onPressed: (() {
                              SystemNavigator.pop();
                            }),
                            child: const Text(
                              'Yes',
                              style: TextStyle(
                                color: textColor,
                              ),
                            ),
                          ),

                        ],
                      )
                    );
                  }),
                  child: const Text(
                    'Exist',
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}