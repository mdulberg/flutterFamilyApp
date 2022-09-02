import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:thedulbergs_v1/functions/functions.dart';

import 'home.dart';

// Google Maps API key AIzaSyAI9-Lc0qfcwLXlxObNeOp4t63JDhtaFhM
final CameraPosition kHome = CameraPosition(
  bearing: 42,
  target: LatLng(53.283134, -6.207563),
  zoom: 20.4,
);
// final CameraPosition kSabaSavta = CameraPosition(
//     bearing: 100,
//     target: LatLng(32.082940, 34.817690),
//     //tilt: 90,
//     zoom: 18);
final CameraPosition kAbuela = CameraPosition(
    bearing: 100,
    target: LatLng(32.082940, 34.817690),
    //tilt: 90,
    zoom: 18);
final CameraPosition kSammy = CameraPosition(
    bearing: 100, target: LatLng(47.649259, -122.39329), tilt: 90, zoom: 18);
final CameraPosition kLiberty = CameraPosition(
    bearing: 100, target: LatLng(32.082940, 34.817690), tilt: 90, zoom: 18);
final CameraPosition kKotel = CameraPosition(
    bearing: 100, target: LatLng(31.776719, 35.234508), tilt: 90, zoom: 18);

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kSabaSavta = CameraPosition(
      bearing: 100,
      target: LatLng(32.082940, 34.817690),
      //tilt: 90,
      zoom: 18);
  final CameraPosition _kHome = CameraPosition(
    bearing: 42,
    target: LatLng(53.283134, -6.207563),
    zoom: 20.4,
  );
  final CameraPosition _kAbuela = CameraPosition(
      bearing: 190, target: LatLng(32.169889, 34.913392), tilt: 30, zoom: 17.4);
  final CameraPosition _kSammy = CameraPosition(
      bearing: 90,
      target: LatLng(47.639756, -122.3926066),
      tilt: 0,
      zoom: 21.2);
  final CameraPosition _kLiberty = CameraPosition(
      bearing: 0, target: LatLng(40.689247, -74.044502), tilt: 50, zoom: 18);
  final CameraPosition _kKotel = CameraPosition(
      bearing: 100, target: LatLng(31.776719, 35.234508), tilt: 50, zoom: 19);
  final CameraPosition _kFrishman = CameraPosition(
      bearing: 100,
      target: LatLng(32.080014757, 34.766955592),
      tilt: 50,
      zoom: 18);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: new Scaffold(
        drawer: Drawer(
          backgroundColor: Colors.deepOrange.shade300,
          child: SingleChildScrollView(
            //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildHeader(context),
                buildMenuItems(context),
              ],
            ),
          ),
        ),
        body: GoogleMap(
          mapType: MapType.hybrid,
          initialCameraPosition: kHome,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }

  Future<void> goToHome() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kHome));
    Navigator.pop(context);
  }

  Future<void> goToSabaSavta() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kSabaSavta));
    Navigator.pop(context);
  }

  Future<void> goToAbuela() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kAbuela));
    Navigator.pop(context);
  }

  Future<void> goToSammy() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kSammy));
    Navigator.pop(context);
  }

  Future<void> goToKotel() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kKotel));
    Navigator.pop(context);
  }

  Future<void> goToLiberty() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLiberty));
    Navigator.pop(context);
  }

  Future<void> goToFrishman() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kFrishman));
    Navigator.pop(context);
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
        child: Wrap(
          runSpacing: 1,
          children: [
            ListTile(
                tileColor: Colors.deepOrange.shade200,
                minVerticalPadding: 15,
                title: const Text(
                  "Home",
                  style: custTextStyle.style_buttonoverlay,
                ),
                onTap: goToHome),

            ListTile(
                tileColor: Colors.deepOrange.shade400,
                minVerticalPadding: 15,
                // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
                title: const Text(
                  "Saba and Savta",
                  style: custTextStyle.style_buttonoverlay,
                ),
                onTap: goToSabaSavta),
            //const Divider(color: Colors.blue, thickness: 1,),
            ListTile(
                tileColor: Colors.deepOrange.shade200,
                minVerticalPadding: 15,
                // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
                title: const Text(
                  "Abuela",
                  style: custTextStyle.style_buttonoverlay,
                ),
                onTap: goToAbuela),
            ListTile(
                minVerticalPadding: 15,
                tileColor: Colors.deepOrange.shade400,
                // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
                title: const Text(
                  "Sammy",
                  style: custTextStyle.style_buttonoverlay,
                ),
                onTap: goToSammy),
            ListTile(
                minVerticalPadding: 15,
                tileColor: Colors.deepOrange.shade200,
                // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
                title: const Text(
                  "Statue of Liberty",
                  style: custTextStyle.style_buttonoverlay,
                ),
                onTap: goToLiberty),
            ListTile(
                minVerticalPadding: 15,
                tileColor: Colors.deepOrange.shade400,
                // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
                title: const Text(
                  "Kotel",
                  style: custTextStyle.style_buttonoverlay,
                ),
                onTap: goToKotel),
            ListTile(
                minVerticalPadding: 15,
                tileColor: Colors.deepOrange.shade200,
                // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
                title: const Text(
                  "Frishman Beach",
                  style: custTextStyle.style_buttonoverlay,
                ),
                onTap: goToFrishman),
            const Divider(
              color: Colors.white38,
              thickness: 4,
              height: 20,
            ),
            ListTile(
              leading: const Icon(
                Icons.home_outlined,
                size: 30,
                color: Colors.white,
              ),
              title: const Text(
                "App Home",
                style: custTextStyle.style_buttonoverlay,
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ));
              },
            ),
          ],
        ),
      );
}

// class NavigationDrawer extends StatelessWidget {
//   //const NavigationDrawer({Key? key}) : super(key: key);
//   late final CameraPosition dest;
//   NavigationDrawer({required this.dest});
//
//   @override
//   Widget build(BuildContext context) => Drawer(
//         backgroundColor: Colors.deepOrange.shade300,
//         child: SingleChildScrollView(
//           //padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               buildHeader(context),
//               buildMenuItems(context),
//             ],
//           ),
//         ),
//       );
//   Widget buildHeader(BuildContext context) => Container(
//         padding: EdgeInsets.only(
//           top: MediaQuery.of(context).padding.top,
//         ),
//       );
//   Widget buildMenuItems(BuildContext context) => Container(
//         padding: const EdgeInsets.fromLTRB(5, 5, 0, 0),
//         child: Wrap(
//           runSpacing: 1,
//           children: [
//             ListTile(
//               tileColor: Colors.deepOrange.shade200,
//               minVerticalPadding: 15,
//               title: const Text(
//                 "Home",
//                 style: custTextStyle.style_buttonoverlay,
//               ),
//               onTap: () {
//                 kHome;
//               },
//             ),
//
//             ListTile(
//               tileColor: Colors.deepOrange.shade400,
//               minVerticalPadding: 15,
//               // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
//               title: const Text(
//                 "Saba and Savta",
//                 style: custTextStyle.style_buttonoverlay,
//               ),
//               onTap: () async {
//                 goToSabaSavta;
//                 print("value of dest is   $dest");
//               },
//             ),
//             //const Divider(color: Colors.blue, thickness: 1,),
//             ListTile(
//               tileColor: Colors.deepOrange.shade200,
//               minVerticalPadding: 15,
//               // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
//               title: const Text(
//                 "Abuela",
//                 style: custTextStyle.style_buttonoverlay,
//               ),
//               onTap: () {
//                 kAbuela;
//               },
//             ),
//             ListTile(
//               minVerticalPadding: 15,
//               tileColor: Colors.deepOrange.shade400,
//               // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
//               title: const Text(
//                 "Sammy",
//                 style: custTextStyle.style_buttonoverlay,
//               ),
//               onTap: () {
//                 kSammy;
//               },
//             ),
//             ListTile(
//               minVerticalPadding: 15,
//               tileColor: Colors.deepOrange.shade200,
//               // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
//               title: const Text(
//                 "Statue of Liberty",
//                 style: custTextStyle.style_buttonoverlay,
//               ),
//               onTap: () {
//                 kLiberty;
//               },
//             ),
//             ListTile(
//               minVerticalPadding: 15,
//               tileColor: Colors.deepOrange.shade200,
//               // leading: const Icon(Icons.home_outlined, size: 30, color: Colors.white,),
//               title: const Text(
//                 "Kotel",
//                 style: custTextStyle.style_buttonoverlay,
//               ),
//               onTap: () {
//                 kKotel;
//               },
//             ),
//             const Divider(
//               color: Colors.white38,
//               thickness: 4,
//               height: 20,
//             ),
//             ListTile(
//               leading: const Icon(
//                 Icons.home_outlined,
//                 size: 30,
//                 color: Colors.white,
//               ),
//               title: const Text(
//                 "App Home",
//                 style: custTextStyle.style_buttonoverlay,
//               ),
//               onTap: () {
//                 Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => Home(),
//                     ));
//               },
//             ),
//           ],
//         ),
//       );
// }
