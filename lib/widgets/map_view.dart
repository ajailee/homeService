import 'package:flutter/material.dart';
import 'package:mapmyindia_gl/mapmyindia_gl.dart';
import 'package:geolocator/geolocator.dart';

import '../utils/key.dart';

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  late CameraPosition initialCameraPosition;
  bool _isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      _isLoading = true;
    });
    super.initState();
    MapmyIndiaAccountManager.setMapSDKKey(mykey['setMapSDKKey']);
    MapmyIndiaAccountManager.setRestAPIKey(mykey['setRestAPIKey']);
    MapmyIndiaAccountManager.setAtlasClientId(mykey['setAtlasClientId']);
    MapmyIndiaAccountManager.setAtlasClientSecret(
      mykey['setAtlasClientSecret'],
    );
    setUp();
  }

  Future<void> setUp() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    double lat =
        await Geolocator.getCurrentPosition().then((value) => value.latitude);
    double lng =
        await Geolocator.getCurrentPosition().then((value) => value.longitude);
    initialCameraPosition = CameraPosition(target: LatLng(lat, lng), zoom: 8);
    setState(() {
      _isLoading = false;
    });
  }

  late MapmyIndiaMapController mapController;
  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? const Center(child: CircularProgressIndicator())
        : Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: MapmyIndiaMap(
                initialCameraPosition: initialCameraPosition,
                myLocationEnabled: true,
                myLocationTrackingMode:
                    MyLocationTrackingMode.TRACKING_GPS_NORTH,
                onUserLocationUpdated: (location) => {},
              ),
            ),
          );
  }
}
