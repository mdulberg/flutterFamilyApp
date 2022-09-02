//import 'package:random_words/random_words.dart';
import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/functions/functions.dart';
import "dart:math";
import '../../pages/home.dart';
import '../../pages/Daniel.dart';

T getRandomElement<T>(List<T> list) {
  final random = Random();
  var i = random.nextInt(list.length);
  return list[i];
}

var list = ['because',  'through',  'between',  'another',  'student',  'country',  'problem',  'against',  'company',  'program',
  'believe',  'without',  'million',  'provide',  'service',  'however',  'include',  'several',  'nothing',  'whether',  'already',
  'history',  'morning',  'himself',  'teacher',  'process',  'college',  'someone',  'suggest',  'control',  'perhaps',  'require',
  'finally',  'explain',  'develop',  'federal',  'receive',  'society',  'because',  'special',  'support',  'project',  'produce',
  'picture',  'product',  'patient',  'certain',  'support',  'century',  'culture',  'billion',  'brother',  'realize',  'hundred',
  'husband',  'economy',  'medical',  'current',  'involve',  'defense',  'subject',  'officer',  'private',  'quickly',  'foreign',
  'natural',  'concern',  'similar',  'usually',  'article',  'despite',  'central',  'exactly',  'protect',  'serious',  'thought',
  'quality',  'meeting',
];

class Game {
  static int tries = 0;
  static List<String> selectedCharacter = [];
}

dynamic listImagesnotFound = [
  "assets/hangman/deadman.gif",
  "assets/hangman/deadman2.gif",
  "assets/hangman/deadman3.gif",
  "assets/hangman/deadman4.gif",
];


class Deadman extends StatelessWidget {
  //const Deadman({Key? key}) : super(key: key);
  static var _random = Random();
  var imageToShow =
  listImagesnotFound[_random.nextInt(listImagesnotFound.length)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body:
      Column(
        children: [
          Image.asset(imageToShow.toString()),
          //Image.asset('assets/hangman/deadman.gif'),
          SizedBox(height: 20,),
          NavButtonMaker(
            ntextToDisplay: 'Go back and try another word',
          nonPressed: () {
              Navigator.pushReplacementNamed(context, '/hangman');
          },)
        ],
      ),

        bottomNavigationBar: BottomNavigationBar(
            enableFeedback: true,
            backgroundColor: Colors.blue[400],
            iconSize: 25,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            selectedItemColor: Colors.orange[400],
            unselectedItemColor: Colors.orange[200],
            onTap: (index){
              switch(index){
                case 0:
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home(),
                      ));
                  break;
                case 1:
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => danielPage(),
                      ));
                  break;
              }
            },
            items: const [
              BottomNavigationBarItem(
                  tooltip: 'Go Home',
                  backgroundColor: Colors.purpleAccent,
                  icon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  tooltip: 'Family information',
                  backgroundColor: Colors.purpleAccent,
                  icon: Icon(Icons.info_rounded),
                  label: 'Info/Daniel'),
              BottomNavigationBarItem(
                  tooltip: 'Countries we have been to',
                  backgroundColor: Colors.purpleAccent,
                  icon: Icon(Icons.location_on_rounded),
                  label: 'Location'),
            ]
        )
    );
  }
}

class Deadman_winner extends StatelessWidget {
  const Deadman_winner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[300],
        body:
        Column(
          children: [
            Image.asset('assets/hangman/deadman_winner.gif'),
          ],
        ),

        bottomNavigationBar: BottomNavigationBar(
            enableFeedback: true,
            backgroundColor: Colors.blue[400],
            iconSize: 25,
            selectedFontSize: 16,
            unselectedFontSize: 14,
            selectedItemColor: Colors.orange[400],
            unselectedItemColor: Colors.orange[200],
            onTap: (index){
              switch(index){
                case 0:
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home(),
                      ));
                  break;
                case 1:
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => danielPage(),
                      ));
                  break;
              }
            },
            items: const [
              BottomNavigationBarItem(
                  tooltip: 'Go Home',
                  backgroundColor: Colors.purpleAccent,
                  icon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  tooltip: 'Family information',
                  backgroundColor: Colors.purpleAccent,
                  icon: Icon(Icons.info_rounded),
                  label: 'Info/Daniel'),
              BottomNavigationBarItem(
                  tooltip: 'Countries we have been to',
                  backgroundColor: Colors.purpleAccent,
                  icon: Icon(Icons.location_on_rounded),
                  label: 'Location'),
            ]
        )
    );
  }
}
