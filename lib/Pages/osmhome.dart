import 'package:de_mad/Pages/doctors.dart';
import 'package:flutter/material.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class OSMhome extends StatefulWidget {
  const OSMhome({super.key});

  @override
  State<OSMhome> createState() => _OSMhomeState();
}

class _OSMhomeState extends State<OSMhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get A Doctor'),
      ),
      body: Container(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Doctor()),
            );
          },
          child: OpenStreetMapSearchAndPick(
              center: LatLong(23, 89),
              buttonColor: Colors.blue,
              buttonText: 'Set Current Location',
              
              onPicked: (pickedData) {
                print(pickedData.latLong.latitude);
                print(pickedData.latLong.longitude);
                print(pickedData.address);
              }),
        ),
      ),
    );
  }
}
