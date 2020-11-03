import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  String locationMan;

  void _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    setState(() {
      locationMan = '${position.latitude} , ${position.longitude}';
    });
    print(locationMan);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('locationMan'),
            FlatButton(
              onPressed: () {
                _getCurrentLocation();
              },
              child: Text('love'),
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}
