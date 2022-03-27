import 'package:flutter/material.dart';
import 'package:stockconsole/screens/dashboard/Dashboard.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Stockchart extends StatefulWidget {
  const Stockchart({Key? key}) : super(key: key);

  @override
  State<Stockchart> createState() => _StockchartState();
}

class _StockchartState extends State<Stockchart> {
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
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
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
              const SizedBox(height: 5),
              SfCartesianChart(
                title: ChartTitle(text: "Nifty50 : 17153"),
                series: <CandleSeries>[
                  CandleSeries<ChartSampleData, num>(
                      dataSource: _chartData,
                      xValueMapper: (ChartSampleData sales, _) => sales.x,
                      lowValueMapper: (ChartSampleData sales, _) => sales.low,
                      highValueMapper: (ChartSampleData sales, _) => sales.high,
                      openValueMapper: (ChartSampleData sales, _) => sales.open,
                      closeValueMapper: (ChartSampleData sales, _) =>
                          sales.close)
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
