import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import '../functions/functions.dart';
import 'Shaya.dart';
import 'home.dart';
import 'maps.dart';

class danielPage extends StatefulWidget {
  const danielPage({Key? key}) : super(key: key);

  @override
  State<danielPage> createState() => _danielPageState();
}

dynamic listImagesnotFound = [
  "assets/Daniel/randomGifs/f1.gif",  "assets/Daniel/randomGifs/f2.gif",  "assets/Daniel/randomGifs/f3.gif",  "assets/Daniel/randomGifs/f4.gif",
  "assets/Daniel/randomGifs/f5.gif",  "assets/Daniel/randomGifs/f6.gif",  "assets/Daniel/randomGifs/f7.gif",  "assets/Daniel/randomGifs/f8.gif",
  "assets/Daniel/randomGifs/f9.gif",  "assets/Daniel/randomGifs/f10.gif",  "assets/Daniel/randomGifs/f11.gif",  "assets/Daniel/randomGifs/f12.gif",
  "assets/Daniel/randomGifs/f13.gif", "assets/Daniel/randomGifs/f14.gif", "assets/Daniel/randomGifs/f15.gif", "assets/Daniel/randomGifs/f16.gif",
  "assets/Daniel/randomGifs/f17.gif",
];

class _danielPageState extends State<danielPage> {
  static var _random = Random();
  var imageToShow =
      listImagesnotFound[_random.nextInt(listImagesnotFound.length)];

  @override
  int goals = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   backgroundColor: Colors.orange[800],
        //   title: Text('Daniel\'s Page', style: custTextStyle.style_appBar),
        //   centerTitle: true,
        // ),
        body: ListView(children: [
          custAppBar(AppBarText: 'Daniel\'s Page', cc: Colors.orange.shade800),
          SizedBox(
            height: 8,
          ),
          CircleAvatar(
            radius: 110,
            backgroundColor: Colors.white,
            child: ClipOval(
              child: Image.asset('assets/Daniel/daniel_face2.jpg'),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  child: Text(
                    'I was born \nto \nSKATE!',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.7,
                        fontFamily: 'IndieFlower'),
                    textAlign: TextAlign.left,
                  ),
                  //color: Colors.pink[200],
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange[800],
                    image: DecorationImage(
                        //scale: 3,
                        image: new AssetImage(
                            'assets/Daniel/Daniel_skateboarding1.jpg'),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerRight),
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: InkWell(
                  splashColor: null,
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.orange[800],
                            ),
                            onPressed: () {
                              setState(() {
                                goals += 1;
                              });
                            },
                            onLongPress: () {
                              setState(() {
                                goals = 0;
                              });
                            },
                            child: Text(
                              'I\'ll nutmeg you\n $goals \ntimes!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2,
                                  fontFamily: 'IndieFlower'),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Ink.image(
                            image: AssetImage('assets/Daniel/ronaldiho.gif'),
                            height: 100,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Card(
                shadowColor: Colors.blueAccent,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3)),
                color: Colors.orange[800],
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      child: Text(
                        'Football skill of the day',
                        style: custTextStyle.style_appBar,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Image.asset(imageToShow.toString()),
                    SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 14,
              ),

              MyImage(textToDisplay1: 'Click here to see my favorite songs page',
                  onPressed1: () {Navigator.pushNamed(context, '/Daniel_songs_page');}),

              SizedBox(
                height: 10,
              ),
              NavButtonMaker(
                ntextToDisplay: 'Click here to go to Shaya\'s page',
                nonPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => shayaPage(),
                      ));
                },
              ),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      stops: [0.2,0.6,0.9],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue.shade400,Colors.blueGrey,Colors.white70]
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 6, 4, 6),
                    child: SizedBox(
                      height: 70,
                      width: double.infinity,
                      child:
                      Text('Gotta go! \nSIUUUUUUUUU ',
                        style: custTextStyle.style_buttonoverlay,)
                      ,),
                  ),
                ),
              ),

              SizedBox(
                height: 8,
              ),
              Image.asset('assets/Daniel/daniel_colombia1.jpg'),
            ],
          ),
        ]),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          showSelectedLabels: true,
          elevation: 5,
          enableFeedback: true,
          backgroundColor: Colors.blue[400],
          iconSize: 25,
          selectedFontSize: 15,
          unselectedFontSize: 14,
          selectedItemColor: Colors.orange[400],
          unselectedItemColor: Colors.orange[200],
          onTap: (index){
            switch(index){
              case 0:
                Navigator.pushNamedAndRemoveUntil(context, '/home',(Route<dynamic> route) => false);
                break;
              case 1:
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => danielPage(),
                    ));
                break;
              case 2:
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => shayaPage(),
                    ));
                break;
              case 3:
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MapSample(),
                    ));
                break;
            }
          },
          items: [
            BottomNavigationBarItem(
                tooltip: 'Go Home',
                backgroundColor: Colors.blue,
                icon: Icon(Icons.home),
                label: 'Home'),
            BottomNavigationBarItem(
                tooltip: 'Daniel\'s awesome page',
                backgroundColor: Colors.red,
                icon: Icon(Icons.person),
                label: 'Daniel'),
            BottomNavigationBarItem(
                tooltip: 'Shaya\'s awesome page',
                backgroundColor: Colors.greenAccent,
                icon: Icon(Icons.person_outline),
                label: 'Shaya'),
            BottomNavigationBarItem(
                tooltip: 'Go explore!',
                backgroundColor: Colors.orange,
                icon: Icon(Icons.location_on_rounded),
                label: 'Map'),
          ]),
    );
  }
}
