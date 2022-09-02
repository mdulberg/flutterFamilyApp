import 'package:flutter/material.dart';
import 'package:thedulbergs_v1/functions/functions.dart';
import 'package:thedulbergs_v1/pages/Daniel.dart';
import '../pages/video_player.dart';
import '../router.dart';
import 'Shaya.dart';
import 'maps.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue[400],
        title: Text('The Dulbergs',
            style: custTextStyle.style_homeappBar),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Material(
                  color: Colors.deepPurple[300],
                  elevation: 8,
                  borderRadius: BorderRadius.circular(48),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                      splashColor: Colors.black,
                      onTap: () {
                        Navigator.pushNamed(context, '/Shaya');
                      },
                      child: Column(
                        children: [
                          Ink.image(
                            image: AssetImage('assets/shaya_face1.jpg'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 6),
                          Text('Shaya',
                              style: custTextStyle.style_buttonoverlay),
                          SizedBox(height: 6),
                        ],
                      )),
                ),
                Material(
                  color: Colors.deepPurple[300],
                  elevation: 8,
                  borderRadius: BorderRadius.circular(48),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: InkWell(
                      splashColor: Colors.red[800],
                      onTap: () {
                        Navigator.pushNamed(context, '/Daniel');
                      },
                      child: Column(
                        children: [
                          Ink.image(
                            image: AssetImage('assets/Daniel/daniel_face1.jpg'),
                            height: 150,
                            width: 180,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 6),
                          Text('Daniel',
                              style: custTextStyle.style_buttonoverlay),
                          SizedBox(height: 6),
                        ],
                      )),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.deepPurple[300],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(48),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/hangman');
                        },
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage('assets/hangman/hangman.png'),
                              height: 150,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6),
                            Text('Hangman',
                                style: custTextStyle.style_buttonoverlay_games),
                            SizedBox(height: 6),
                          ],
                        )),
                  ),
                  Material(
                    color: Colors.deepPurple[300],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(48),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/Xylophone');
                        },
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage('assets/musical_notes/xylophone.jpg'),
                              height: 150,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6),
                            Text('Xylophone',
                                style: custTextStyle.style_buttonoverlay_games),
                            SizedBox(height: 6),
                          ],
                        )),
                  ),
                ]
            ),
            SizedBox(height: 8,),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Material(
                    color: Colors.deepPurple[300],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(48),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          Navigator.pushNamed(context, '/MineSweeper');
                        },
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage('assets/MineSweeper/logo.jpeg'),
                              height: 120,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            //SizedBox(height: 6),
                            Text('Mine\nSweeper', textAlign: TextAlign.center,
                                style: custTextStyle.style_buttonoverlay_games,overflow: TextOverflow.visible,),
                            SizedBox(height: 6),
                          ],
                        )),
                  ),
                  Material(
                    color: Colors.deepPurple[300],
                    elevation: 8,
                    borderRadius: BorderRadius.circular(48),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                        splashColor: Colors.black,
                        onTap: () {
                          //Navigator.pushNamed(context, '/videoPlayer');
                          Navigator.pushNamed(context, mapRoute);

                        },
                        child: Column(
                          children: [
                            Ink.image(
                              image: AssetImage('assets/beach.jpg'),
                              height: 150,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 6),
                            Text('Map',
                                style: custTextStyle.style_buttonoverlay_games),
                            SizedBox(height: 6),
                          ],
                        )),
                  ),
                ]
            )
          ],
        ),
      ),
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
