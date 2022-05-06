import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Color/colors.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({ Key? key }) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
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
                      children: const[
                        Text(
                          'Name:',
                          style: TextStyle(
                            color: textColor
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: TextField(
                              maxLength: 10,
                              decoration: InputDecoration(
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
                         SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Using:',
                          style: TextStyle(
                            color: textColor
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: TextField(
                              maxLength: 1,
                              decoration: InputDecoration(
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
                      children: const[
                        Text(
                          'Name:',
                          style: TextStyle(
                            color: textColor
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: TextField(
                              maxLength: 10,
                              decoration: InputDecoration(
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
                         SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Using:',
                          style: TextStyle(
                            color: textColor
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 20.0),
                            child: TextField(
                              maxLength: 1,
                              decoration: InputDecoration(
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
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 50,
          primary: textColor
        ),
        onPressed: (){

        }, 
        child: Text(
          'Save & Play',
          style: TextStyle(
            // color: textColor
          ),
        )
      ),
    );
  }
}