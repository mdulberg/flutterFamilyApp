import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/functions/functions.dart';
import 'package:thedulbergs_v1/games/Hangman/figure_image.dart';
import 'package:thedulbergs_v1/games/Hangman//letter.dart';
import "dart:math";
import 'game.dart';

class HangManApp extends StatefulWidget {
  const HangManApp({Key? key}) : super(key: key);

  @override
  State<HangManApp> createState() => _HangManAppState();
}

class _HangManAppState extends State<HangManApp> {
  // Choosing the game word

  var word = getRandomElement(list).toUpperCase();

  // Create a list of all alphabet characters
  List<String> alphabet = [
    for (var i = 65; i <= 90; i++) String.fromCharCode(i)
  ];
  //var alphabet = [for (var i = 65; i <= 90; i++) String.fromCharCode(i)];

  @override
  void initState() {
    Game.tries = 0;
    super.initState();
  }

  @override
  void dispose() {
    Game.tries = 0;
    Game.selectedCharacter = [];
    print('-------------- New word! -------------');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      // appBar: AppBar(
      //   title: Text("turdman"),
      //   elevation: 0,
      //   centerTitle: true,
      //   backgroundColor: AppColor.primaryColor,
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              shadowColor: Colors.teal,
              elevation: 10,
              color: AppColor.primaryColorDark,
              child: Row(
                children: [
                  NavButtonMaker(
                      ntextToDisplay: 'Home',
                  nonPressed: () {
                        Navigator.popAndPushNamed(context, '/home');
                  },),
                  Center(
                    widthFactor: 1.4,
                    child: SizedBox(
                      child: Text('Hangman', style: custTextStyle.style_teal_32,),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Stack(
                children: [
                  figureImage(Game.tries >= 0, "assets/hangman/hang.png"),
                  figureImage(Game.tries >= 1, "assets/hangman/head.png"),
                  figureImage(Game.tries >= 2, "assets/hangman/body.png"),
                  figureImage(Game.tries >= 3, "assets/hangman/ra.png"),
                  figureImage(Game.tries >= 4, "assets/hangman/la.png"),
                  figureImage(Game.tries >= 5, "assets/hangman/rl.png"),
                  figureImage(Game.tries >= 6, "assets/hangman/ll.png"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: word
                  .split("")
                  .map((e) => letter(e.toUpperCase(),
                      !Game.selectedCharacter.contains(e.toUpperCase())))
                  .toList(),
            ),

            SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: double.infinity,
              height: 250,
              child: GridView.count(
                crossAxisCount: 7,
                mainAxisSpacing: 7.0,
                crossAxisSpacing: 7.0,
                padding: EdgeInsets.all(8.0),
                children: alphabet.map((e) {
                  return RawMaterialButton(
                    onPressed: Game.selectedCharacter.contains(e)
                        ? null // We first check that we didn't select the letter previously
                        : () {
                            setState(() {
                              Game.selectedCharacter.add(e);
                              print(Game.selectedCharacter);
                              if (!word.split('').contains(e.toUpperCase())) {
                                Game.tries++;
                              }
                              print('Number of tries - ${Game.tries}');
                              if (Game.tries > 5) {
                                print("DEAD!!!!");
                                Navigator.pushNamed(context, '/deadman');
                                Game.tries = 0;
                                Game.selectedCharacter = [];
                              }
                              ;
                            });
                          },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Text(
                      e,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    fillColor: Game.selectedCharacter.contains(e)
                        ? Colors.black87
                        : Colors.blue,
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
