import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tic_tac_toe/Color/colors.dart';

import '../State_Management/provider.dart';

class Game extends StatefulWidget {
  const Game({ Key? key }) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

var height = 100.0;
var width = 100.0;

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppData(),
      builder: (context, child) {
        return Scaffold(
        backgroundColor: textColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 8,
              right: 8
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerOne');
                      }),
                      child: Container(
                        height: height,
                        width: width,
                        decoration: const BoxDecoration(
                          color: whiteColor,
                          border: Border(
                            right: BorderSide(
                              width: 2,
                              color: textColor
                            ),  
                          ),
                        ),
                        child: Text(
                          context.watch<AppData>().containerone
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerTwo');
                      }),
                      child: Container(
                        height: height,
                        width: width,
                        decoration: const BoxDecoration(
                          color: whiteColor,
                        ),
                        child: Text(
                          context.watch<AppData>().containerTwo
                        ),
                      ),
                    ),
                    Container(
                      height: height,
                      width: width,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        border: Border(
                          left: BorderSide(
                            width: 2,
                            color: textColor
                          )
                        )
                      ),
                      
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        border: Border(
                          right: BorderSide(
                            width: 2,
                            color: textColor
                          ),
                          top: BorderSide(
                            width: 2,
                            color: textColor
                          ),
                          bottom: BorderSide(
                            width: 2,
                            color: textColor
                          ),
                        )
                      ),
                    ),
                    Container(
                      height: height,
                      width: width,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: textColor
                          ),
                          top: BorderSide(
                            width: 2,
                            color: textColor
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: height,
                      width: width,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        border: Border(
                          left: BorderSide(
                            width: 2,
                            color: textColor
                          ),
                          top: BorderSide(
                            width: 2,
                            color: textColor
                          ),
                          bottom: BorderSide(
                            width: 2,
                            color: textColor
                          ),
                        )
                      ),
                    )
                  ],
                ),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height,
                      width: width,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        border: Border(
                          right: BorderSide(
                            width: 2,
                            color: textColor
                          ),  
                        )
                      ),
                    ),
                    Container(
                      height: height,
                      width: width,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        
                      ),
                    ),
                    Container(
                      height: height,
                      width: width,
                      decoration: const BoxDecoration(
                        color: whiteColor,
                        border: Border(
                          left: BorderSide(
                            width: 2,
                            color: textColor
                          )
                        )
                      ),
                    )
                  ],
                ),

                Row(
                  children: [
                    Text(
                      AppData.playerOneName
                      // Provider<AppData>
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
      },
    );
  }
}