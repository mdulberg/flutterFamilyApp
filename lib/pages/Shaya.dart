import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../ShayaSongs.dart';
import '../functions/functions.dart';
import 'maps.dart';
import 'video_screen.dart';
import 'home.dart';
import 'Daniel.dart';

class shayaPage extends StatefulWidget {
  const shayaPage({Key? key}) : super(key: key);

  @override
  State<shayaPage> createState() => _shayaPageState();
}

class _shayaPageState extends State<shayaPage> {
  int betterThan = 0;
  List<ShayaSongs> songList = [
    ShayaSongs(
        position: '1',
        songName: "Budapest",
        singer: "George Ezra",
        songLink: "https://youtu.be/VHrLPs3_1Fs"),
    ShayaSongs(
        position: '2',
        songName: "Mean",
        singer: "Taylor Swift",
        songLink: "https://youtu.be/jYa1eI1hpDE"),
    ShayaSongs(
        position: '2',
        songName: "Black Or White",
        singer: "Michael Jackson",
        songLink: "https://youtu.be/F2AitTPI5U0"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   backgroundColor: Colors.greenAccent,
        //   title: Text('Shaya\'s Page',
        //       style: custTextStyle.style_appBar),
        //   centerTitle: true,
        //   elevation: 15,
        // ),
        body: Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
            child: ListView(
              children: [
                custAppBar(AppBarText: 'Shaya\'s Page',cc: Colors.greenAccent),
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 120,
                  backgroundColor: Colors.white,
                  child: ClipOval(
                    child: Image.asset('assets/shaya_face1.jpg'),
                  ),
                ),
                Container(
                  child: Text(
                    'Hi Everybody\nAnd Welcome!!\nI like unicorns!',
                    style: TextStyle(
                        color: Colors.red[900],
                        fontSize: 30,
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
                    color: Colors.teal,
                    image: DecorationImage(
                        image: new AssetImage('assets/shaya_face2.jpg'),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.centerRight),
                  ),
                ),
                Image.network('http://clipart-library.com/img/1767525.png',
                    fit: BoxFit.fitWidth),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text('I used to be an Astronaut?!',
                      style:
                      //TextStyle(
                          custTextStyle.style_teal_32),
                  color: Colors.red[300],
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                ),
                Image.asset('assets/astro_shaya.jpg'),
                Container(
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      setState(() {
                        betterThan += 1;
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        betterThan = 0;
                      });
                    },
                    child: Text(
                      'My dad says I behave like a $betterThan year old',
                      style: TextStyle(
                          color: Colors.red[200],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          fontFamily: 'IndieFlower'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                // bigButtonMaker(
                //     textToDisplay: 'Click here to see my favorite songs page',
                //     onPressed: () {
                //       Navigator.pushNamed(context, '/Youtube');
                //     }),

                // MyImage(
                //   textToDisplay1: 'Click here to see my favorite songs page',
                //   onPressed1: () {
                //     //YoutubePlayerDemoApp();
                //     Navigator.pushNamed(context, '/Youtube');
                //   },
                // ),





                MyImage(textToDisplay1: 'Click here to see my favorite songs page',
                onPressed1: () {Navigator.pushNamed(context, '/shaya_songs_page');}),




                SizedBox(
                  height: 20,
                ),
                NavButtonMaker(
                  ntextToDisplay: 'Click here to go to Daniel\'s page',
                nonPressed: () {
                  Navigator.pushReplacement(
                    context,
                      MaterialPageRoute(builder: (context) => danielPage(),
                  ));
                },),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Thank\'s for visiting, gotta jet!', style:
                    custTextStyle.style_music1,
                    ),
                    Icon(
                        Icons.airplanemode_active,
                      size: 30,
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/shaya_on_the_beach.jpg'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )),
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
