import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class PageGeo extends StatefulWidget {
  const PageGeo({Key? key}) : super(key: key);

  @override
  State<PageGeo> createState() => _PageGeoState();
}

@override
class _PageGeoState extends State<PageGeo> {
  Position? _position;

  void _getCurrentLocation() async {
    Position position = await _determinePosition();
    setState(() {
      _position = position;

      /// ScaffoldMessenger.of(context).showSnackBar(position);
    });
  }

  Future<Position> _determinePosition() async {
    LocationPermission permission;
    //permission = await Geolocator.checkPermission();
    permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission denied by user');
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GeoLocation'),
      ),
      body: Center(
        child: _position != null
            ? Text('Current Location: $_position')
            : const Text('Click the button'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getCurrentLocation,
        tooltip: 'Position',
        child: const Icon(Icons.location_searching),
      ),
    );
  }
}
