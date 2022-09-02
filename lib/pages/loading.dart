import 'package:flutter/material.dart';
import '../functions/functions.dart';
import 'home.dart';


class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.home_rounded),
                NavButtonMaker(
                  ntextToDisplay: 'What are you doing here?! Go home!',
                  nonPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => Home(),
                        ));
                  },),

              ],
            )



        )
    );
  }
}
