import 'package:flutter/material.dart';
import 'package:game_levels_scrolling_map/game_levels_scrolling_map.dart';
import 'package:game_levels_scrolling_map/model/point_model.dart';

class DailyMed extends StatefulWidget {
  const DailyMed({super.key});

  @override
  State<DailyMed> createState() => _DailyMedState();
}

class _DailyMedState extends State<DailyMed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GameLevelsScrollingMap(
          imageUrl: "assets/drawable/map_vertical.png",
          width: 1080,
          pointsPositionDeltaX: 25,
          pointsPositionDeltaY: 25,
          svgUrl: 'assets/svg/map_vertical.svg',
          points: points,
        ),
      ),
    );
  }

  @override
  void initState() {
    fillTestData();
  }

  List<PointModel> points = [];

  void fillTestData() {
    for (int i = 0; i < 6; i++) {
      points.add(PointModel(100, testWidget(i + 1)));
    }
  }

  Widget testWidget(int order) {
    return InkWell(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            "assets/drawable/map_vertical_point.png",
            fit: BoxFit.fitWidth,
            width: 50,
          ),
          Text("$order",
              style: const TextStyle(color: Colors.black, fontSize: 15))
        ],
      ),
      onTap: () {
        if (order == 1) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text("Do Pranayama for 10 minutes"),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        } else if (order == 2) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Text("Do Sukhasna for 10 minutes"),
                actions: <Widget>[
                  ElevatedButton(
                    child: const Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        } else {}
      },
    );
  }
}
