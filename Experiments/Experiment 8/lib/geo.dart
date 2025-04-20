import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

// LocationScreen widget (UI)
class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String _location = "Getting location...";

  @override
  void initState() {
    super.initState();
    _getLocation();
  }

  void _getLocation() async {
    String location = await LocationService.getCurrentLocation();
    setState(() {
      _location = location;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GPS Location Example')),
      body: Center(
        child: Text(
          _location,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

// LocationService to fetch the GPS location
class LocationService {
  static Future<String> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      return "Latitude: ${position.latitude}, Longitude: ${position.longitude}";
    } catch (e) {
      return "Could not fetch location: $e";
    }
  }
}
