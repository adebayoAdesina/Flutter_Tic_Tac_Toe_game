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
    var size = MediaQuery.of(context).size;
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
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerone,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
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
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerTwo,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerThree');
                      }),
                      child: Container(
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
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerThree,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
                        ),
                        
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerFour');
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
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerFour,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerFive');
                      }),
                      child: Container(
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
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerFive,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerSix');
                      }),
                      child: Container(
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
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerSix,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerSeven');
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
                          )
                        ),
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerSeven,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerEight');
                      }),
                      child: Container(
                        height: height,
                        width: width,
                        decoration: const BoxDecoration(
                          color: whiteColor,
                          
                        ),
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerEight,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (() {
                        context.read<AppData>().playingGame('containerNine');
                      }),
                      child: Container(
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
                        child: Center(
                          child: Text(
                            context.watch<AppData>().containerNine,
                            style: const TextStyle(
                              color: textColor,
                              fontSize: 45,
                              fontWeight: FontWeight.w700
                              
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const Text(
                          'Player One',
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          AppData.playerOneName
                        ),
                        Text(
                          context.watch<AppData>().scoreA.toString(),
                          style: const TextStyle(
                            fontSize: 50,
                          ),
                        )
                      ],
                    ),
                    Container(
                      color: whiteColor,
                      width: 5,
                      height: size.height*0.2,
                    
                    ),
                    Column(
                      children: [
                        const Text(
                          'Player Two',
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          AppData.playerTwoName
                        ),
                        Text(
                          context.watch<AppData>().scoreB.toString(),
                          style: const TextStyle(
                            fontSize: 50,
                          ),
                        )
                      ],
                    )
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