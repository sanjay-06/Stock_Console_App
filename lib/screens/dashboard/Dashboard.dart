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
  late List<ChartSampleData> _chartsensexData;

  @override
  void initState() {
    _chartData = getChartData();
    _chartsensexData = getChartsensexData();

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
          title: const Text("Market Overview"),
        ),
        body: SingleChildScrollView(
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
                      title: ChartTitle(text: "Nifty50 : 17013.95"),
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
                      title: ChartTitle(text: "Sensex : 57008.95"),
                      series: <CandleSeries>[
                        CandleSeries<ChartSampleData, num>(
                            dataSource: _chartsensexData,
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
            ],
          ),

          // persistentFooterButtons: const [Footer()],
        ));
  }

  List<ChartSampleData> getChartData() {
    return <ChartSampleData>[
      ChartSampleData(
          x: 1, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 2, open: 17019, high: 17184.7, low: 17018.25, close: 17123.95),
      ChartSampleData(
          x: 3, open: 17100, high: 17194.7, low: 17008.25, close: 17003.95),
      ChartSampleData(
          x: 4, open: 17180, high: 17104.7, low: 17008.25, close: 17050.95),
      ChartSampleData(
          x: 5, open: 17120, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 6, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 7, open: 17012, high: 17118.7, low: 17008, close: 17108.95),
      ChartSampleData(
          x: 8, open: 17011, high: 17114.7, low: 17008.25, close: 17003.95),
      ChartSampleData(
          x: 9, open: 17010, high: 17100.95, low: 17008.25, close: 17100.95),
      ChartSampleData(
          x: 10, open: 17010, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 11, open: 17100, high: 17124.7, low: 17018.25, close: 17123.95),
      ChartSampleData(
          x: 12, open: 17100, high: 17114.7, low: 17008.25, close: 17008.25),
      ChartSampleData(
          x: 13, open: 17011, high: 17114.7, low: 17008.25, close: 17114.7),
      ChartSampleData(
          x: 14, open: 17120, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 15, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 16, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 17, open: 17019, high: 17184.7, low: 17018.25, close: 17123.95),
      ChartSampleData(
          x: 18, open: 17100, high: 17194.7, low: 17008.25, close: 17003.95),
      ChartSampleData(
          x: 19, open: 17180, high: 17104.7, low: 17008.25, close: 17050.95),
      ChartSampleData(
          x: 20, open: 17120, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 21, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 22, open: 17012, high: 17118.7, low: 17008, close: 17108.95),
      ChartSampleData(
          x: 23, open: 17011, high: 17114.7, low: 17008.25, close: 17003.95),
      ChartSampleData(
          x: 24, open: 17010, high: 17100.95, low: 17008.25, close: 17100.95),
      ChartSampleData(
          x: 25, open: 17010, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 26, open: 17100, high: 17124.7, low: 17018.25, close: 17123.95),
      ChartSampleData(
          x: 27, open: 17100, high: 17114.7, low: 17008.25, close: 17008.25),
      ChartSampleData(
          x: 28, open: 17011, high: 17114.7, low: 17008.25, close: 17114.7),
      ChartSampleData(
          x: 29, open: 17120, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 30, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 31, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 32, open: 17019, high: 17184.7, low: 17018.25, close: 17123.95),
      ChartSampleData(
          x: 33, open: 17100, high: 17194.7, low: 17008.25, close: 17003.95),
      ChartSampleData(
          x: 34, open: 17180, high: 17104.7, low: 17008.25, close: 17050.95),
      ChartSampleData(
          x: 35, open: 17120, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 36, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 37, open: 17012, high: 17118.7, low: 17008, close: 17108.95),
      ChartSampleData(
          x: 38, open: 17011, high: 17114.7, low: 17008.25, close: 17003.95),
      ChartSampleData(
          x: 39, open: 17010, high: 17100.95, low: 17008.25, close: 17100.95),
      ChartSampleData(
          x: 40, open: 17010, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 41, open: 17100, high: 17124.7, low: 17018.25, close: 17123.95),
      ChartSampleData(
          x: 42, open: 17100, high: 17114.7, low: 17008.25, close: 17008.25),
      ChartSampleData(
          x: 43, open: 17011, high: 17114.7, low: 17008.25, close: 17114.7),
      ChartSampleData(
          x: 44, open: 17120, high: 17114.7, low: 17008.25, close: 17103.95),
      ChartSampleData(
          x: 45, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 46, open: 17110, high: 17114.7, low: 17001.25, close: 17013.95),
      ChartSampleData(
          x: 47, open: 17019, high: 17184.7, low: 17018.25, close: 17123.95),
      ChartSampleData(
          x: 48, open: 17100, high: 17194.7, low: 17008.25, close: 17003.95),
      ChartSampleData(
          x: 49, open: 17180, high: 17104.7, low: 17008.25, close: 17050.95),
      ChartSampleData(
          x: 50, open: 17120, high: 17114.7, low: 17008.25, close: 17103.95),
    ];
  }

  List<ChartSampleData> getChartsensexData() {
    return <ChartSampleData>[
      ChartSampleData(
          x: 1, open: 57110, high: 57114.7, low: 57001.25, close: 57001.25),
      ChartSampleData(
          x: 2, open: 57019, high: 57184.7, low: 57018.25, close: 57183.95),
      ChartSampleData(
          x: 3, open: 57100, high: 57194.7, low: 57008.25, close: 57003.95),
      ChartSampleData(
          x: 4, open: 57180, high: 57109.7, low: 57008.25, close: 57010.75),
      ChartSampleData(
          x: 5, open: 57120, high: 57114.7, low: 57008.25, close: 57008.95),
      ChartSampleData(
          x: 6, open: 57110, high: 57114.7, low: 57001.25, close: 57013.95),
      ChartSampleData(
          x: 7, open: 57012, high: 57118.7, low: 57008, close: 57108.95),
      ChartSampleData(
          x: 8, open: 57011, high: 57114.7, low: 57008.25, close: 57113.95),
      ChartSampleData(
          x: 9, open: 57010, high: 57100.95, low: 57008.25, close: 57100),
      ChartSampleData(
          x: 10, open: 57010, high: 57114.7, low: 57008.25, close: 57103.95),
      ChartSampleData(
          x: 11, open: 57110, high: 57114.7, low: 57001.25, close: 57013.95),
      ChartSampleData(
          x: 12, open: 57100, high: 57124.7, low: 57018.25, close: 57123.95),
      ChartSampleData(
          x: 13, open: 57100, high: 57114.7, low: 57008.25, close: 57010),
      ChartSampleData(
          x: 14, open: 57011, high: 57114.7, low: 57008.25, close: 57116),
      ChartSampleData(
          x: 15, open: 57120, high: 57114.7, low: 57008.25, close: 57008.95),
      ChartSampleData(
          x: 16, open: 57110, high: 57114.7, low: 57001.25, close: 57013.95),
      ChartSampleData(
          x: 17, open: 57012, high: 57118.7, low: 57008, close: 57108.95),
      ChartSampleData(
          x: 18, open: 57011, high: 57114.7, low: 57008.25, close: 57113.95),
      ChartSampleData(
          x: 19, open: 57010, high: 57100.95, low: 57008.25, close: 57100),
      ChartSampleData(
          x: 20, open: 57010, high: 57114.7, low: 57008.25, close: 57103.95),
      ChartSampleData(
          x: 21, open: 57110, high: 57114.7, low: 57001.25, close: 57013.95),
      ChartSampleData(
          x: 22, open: 57100, high: 57124.7, low: 57018.25, close: 57123.95),
      ChartSampleData(
          x: 23, open: 57100, high: 57114.7, low: 57008.25, close: 57010),
      ChartSampleData(
          x: 24, open: 57011, high: 57114.7, low: 57008.25, close: 57116),
      ChartSampleData(
          x: 25, open: 57120, high: 57114.7, low: 57008.25, close: 57008.95),
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
