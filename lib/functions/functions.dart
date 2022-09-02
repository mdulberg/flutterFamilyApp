import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../ShayaSongs.dart';
import '../pages/video_screen.dart';
import 'package:flutter/cupertino.dart';
//import 'package:youtube_player_iframe/youtube_player_iframe.dart';






class songListCard extends StatelessWidget {
  final ShayaSongs songList;

  songListCard({required this.songList});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              songList.position,
              style: TextStyle(fontSize: 19, color: Colors.red[800]),
            ),
            Text(
              songList.songName,
              style: TextStyle(fontSize: 19, color: Colors.red[300]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              songList.singer,
              style: TextStyle(fontSize: 18, color: Colors.red[200]),
            ),
            Text(
              'Can be viewed at - ${songList.songLink}',
              style: TextStyle(fontSize: 17, color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }
}

class custTextStyle {
  static const style_teal_32 = TextStyle(
      color: Colors.teal,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      fontFamily: 'IndieFlower');
  static const style_appBar = TextStyle(
      color: Colors.white,
      fontSize: 33,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      fontFamily: 'IndieFlower');
  static const style_homeappBar = TextStyle(
      color: Colors.orange,
      fontSize: 38,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      fontFamily: 'IndieFlower');
  static const style_buttonoverlay = TextStyle(
      color: Colors.white,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      fontFamily: 'IndieFlower');
  static const style_buttonoverlay_games = TextStyle(
      color: Colors.white,
      fontSize: 29,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.3,
      fontFamily: 'IndieFlower');
  static const style_music1 = TextStyle(
      color: Colors.deepPurple,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.6,
      fontFamily: 'IndieFlower');
  static const style_music_card_title = TextStyle(
      color: Colors.deepPurple,
      fontSize: 24,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.2,
      fontFamily: 'IndieFlower');
  static const style_music_card_text = TextStyle(
      color: Colors.deepPurple,
      fontSize: 24,
      fontWeight: FontWeight.w300,
      letterSpacing: 1.2,
      fontFamily: 'IndieFlower');
}

class MyImage extends StatelessWidget {
  late final String textToDisplay1;
  final void Function()? onPressed1;
  MyImage({required this.textToDisplay1, this.onPressed1});
  double hh = 70;
  double ww = 400;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed1,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            child: Container(
              width: ww,
              height: hh,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.deepOrange.shade100, width: 2),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                image: const DecorationImage(
                    colorFilter:
                        ColorFilter.mode(Colors.white70, BlendMode.overlay),
                    image: AssetImage("assets/music1.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
              child: Container(
                width: ww,
                height: hh,
                child: Text(textToDisplay1,
                    style: custTextStyle.style_music1,
                    textAlign: TextAlign.center),
              ),
              alignment: Alignment.center)
        ],
      ),
    );
  }
}

class bigButtonMaker extends StatelessWidget {
  late final String textToDisplay;
  final void Function()? onPressed;
  bigButtonMaker({required this.textToDisplay, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple.shade300, Colors.red.shade400],
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
        ),
      ),
      child: TextButton(
        child: Text(
          textToDisplay,
          style: TextStyle(color: Colors.amber),
        ),
        //onPressed: () {},
        onPressed: onPressed,
      ),
    );
  }
}

class NavButtonMaker extends StatelessWidget {
  late final String ntextToDisplay;
  final void Function()? nonPressed;
  NavButtonMaker({required this.ntextToDisplay, this.nonPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(ntextToDisplay,
          style: TextStyle(
            color: Colors.lightGreenAccent,
            fontSize: 22,
            fontFamily: 'IndieFlower',
          )),
      onPressed: nonPressed,
      style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return Colors.blue[700];
              return null;
            },
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.purple.shade900),
          shadowColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
          elevation: MaterialStateProperty.all<double>(10),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.blue.shade700, width: 4)),
          )),
    );
  }
}

class cardBuilder extends StatelessWidget {
  //const cardBuilder({Key? key}) : super(key: key);
  late final String songName;
  late final String singer;
  late final String link;
  late final String songAvatar;
  final void Function()? onPressed;
  cardBuilder({required this.songName, this.onPressed, required this.link, required this.songAvatar, required this.singer});
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.deepPurple,
      color: Colors.amber[100],
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: InkWell(
          onTap: onPressed,
          splashColor: Colors.indigoAccent,
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            children: [
              Ink.image(
                image: AssetImage(
                  'assets/$songAvatar',
                ),
                fit: BoxFit.fitHeight,
                height: 150,
                // width: 150,
              ),
              SizedBox(height: 8,),
              Text(songName, style: custTextStyle.style_music1,),
              Text(singer, style: custTextStyle.style_music_card_text,)
            ],
          ),
        ),
      ),
    );
  }
}

class custAppBar extends StatelessWidget {
  //const custAppBar({Key? key}) : super(key: key);
  late final String AppBarText;
  late final Color cc;
  custAppBar({required this.AppBarText, required this.cc});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.teal,
      elevation: 10,
      color: cc,
      child: Row(
        children: [
          NavButtonMaker(
            ntextToDisplay: 'Home',
            nonPressed: () {
              Navigator.popAndPushNamed(context, '/home');
            },),
          Center(
            widthFactor: 1.2,
            child: SizedBox(
              child: Text(AppBarText, style: custTextStyle.style_appBar,),
            ),
          )
        ],
      ),
    );
  }
}


class AppColor {
  static Color primaryColor = Color(0xFF39298a);
  static Color primaryColorDark = Color(0xFF231954);

}
