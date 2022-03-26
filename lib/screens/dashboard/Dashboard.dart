// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:stockconsole/screens/widgets/NavBar.dart';
// import 'package:flutter_candlesticks/flutter_candlesticks.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NavBar()));
            },
          ),
          centerTitle: true,
          title: const Text("Dashboard"),
        ),
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(10),
            // color: Colors.green[100],
            shadowColor: Colors.blueGrey,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SfSparkLineChart(
                  //Enable the trackball
                  trackball: const SparkChartTrackball(
                      activationMode: SparkChartActivationMode.tap),
                  //Enable marker
                  marker: const SparkChartMarker(
                      displayMode: SparkChartMarkerDisplayMode.all),
                  //Enable data label
                  labelDisplayMode: SparkChartLabelDisplayMode.all,
                  data: const <double>[
                    1,
                    5,
                    6,
                    0,
                    1,
                    2,
                    7,
                    7,
                    4,
                    10,
                    13,
                    6,
                    7,
                    5,
                    11,
                    5,
                    3,
                    4,
                    5,
                    6,
                    1,
                    2,
                    3,
                    7,
                    5,
                    11,
                    5,
                    3,
                    4,
                    5,
                    6,
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
