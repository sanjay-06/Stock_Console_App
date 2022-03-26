// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:stockconsole/screens/widgets/NavBar.dart';
// import 'package:flutter_candlesticks/flutter_candlesticks.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late List<ChartSampleData> _chartData;

  @override
  void initState() {
    _chartData = getChartData();
    super.initState();
  }

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
        body: Container(
            child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(10),
              // color: Colors.green[100],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 5),
                  SfCartesianChart(
                    title: ChartTitle(text: "Nifty50 : 17153"),
                    series: <CandleSeries>[
                      CandleSeries<ChartSampleData, num>(
                          dataSource: _chartData,
                          xValueMapper: (ChartSampleData sales, _) => sales.x,
                          lowValueMapper: (ChartSampleData sales, _) =>
                              sales.low,
                          highValueMapper: (ChartSampleData sales, _) =>
                              sales.high,
                          openValueMapper: (ChartSampleData sales, _) =>
                              sales.open,
                          closeValueMapper: (ChartSampleData sales, _) =>
                              sales.close)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Card(
              margin: const EdgeInsets.all(10),
              // color: Colors.green[100],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(height: 5),
                  const SizedBox(height: 5),
                  SfCartesianChart(
                    title: ChartTitle(text: "Sensex : 57369.20"),
                    series: <CandleSeries>[
                      CandleSeries<ChartSampleData, num>(
                          dataSource: _chartData,
                          xValueMapper: (ChartSampleData sales, _) => sales.x,
                          lowValueMapper: (ChartSampleData sales, _) =>
                              sales.low,
                          highValueMapper: (ChartSampleData sales, _) =>
                              sales.high,
                          openValueMapper: (ChartSampleData sales, _) =>
                              sales.open,
                          closeValueMapper: (ChartSampleData sales, _) =>
                              sales.close)
                    ],
                  ),
                ],
              ),
            )
          ],
        )));
  }

  List<ChartSampleData> getChartData() {
    return <ChartSampleData>[
      ChartSampleData(x: 1, open: 110, high: 114.7, low: 1.25, close: 13.95),
      ChartSampleData(x: 2, open: 10, high: 184.7, low: 18.25, close: 123.95),
      ChartSampleData(x: 3, open: 100, high: 194.7, low: 8.25, close: 3.95),
      ChartSampleData(x: 4, open: 80, high: 504.7, low: 8.25, close: 500.95),
      ChartSampleData(x: 5, open: 120, high: 114.7, low: 8.25, close: 103.95),
      ChartSampleData(x: 6, open: 110, high: 114.7, low: 1.25, close: 13.95),
      ChartSampleData(x: 7, open: 12, high: 118.7, low: 18.25, close: 123.95),
      ChartSampleData(x: 8, open: 11, high: 114.7, low: 8.25, close: 3.95),
      ChartSampleData(x: 9, open: 10, high: 500.95, low: 8.25, close: 500.95),
      ChartSampleData(x: 10, open: 170, high: 114.7, low: 8.25, close: 103.95),
      ChartSampleData(x: 1, open: 110, high: 114.7, low: 1.25, close: 13.95),
      ChartSampleData(x: 11, open: 100, high: 114.7, low: 18.25, close: 123.95),
      ChartSampleData(x: 12, open: 10, high: 114.7, low: 8.25, close: 3.95),
      ChartSampleData(x: 13, open: 11, high: 114.7, low: 8.25, close: 500.95),
      ChartSampleData(x: 14, open: 120, high: 114.7, low: 8.25, close: 103.95),
    ];
  }
}

class ChartSampleData {
  ChartSampleData({this.x, this.open, this.close, this.low, this.high});
  final num? x;
  final num? open;
  final num? close;
  final num? low;
  final num? high;
}
