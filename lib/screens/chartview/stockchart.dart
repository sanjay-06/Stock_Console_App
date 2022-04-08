import 'package:flutter/material.dart';
import 'package:stockconsole/screens/dashboard/Dashboard.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Stockchart extends StatefulWidget {
  final String title;
  final double price;
  const Stockchart({Key? key, required this.title, required this.price})
      : super(key: key);

  @override
  State<Stockchart> createState() {
    // ignore: no_logic_in_create_state
    return _StockchartState(title, price);
  }
}

class _StockchartState extends State<Stockchart> {
  late List<ChartSampleData> _chartData;
  final String title;
  final double price;

  _StockchartState(this.title, this.price);

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
                title: ChartTitle(text: title),
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
      ChartSampleData(
          x: 1,
          open: price - 100,
          high: price,
          low: price - 100,
          close: price - 2),
      ChartSampleData(
          x: 2,
          open: price + 120,
          high: price + 120,
          low: price - 110,
          close: price + 10),
      ChartSampleData(
          x: 3,
          open: price + 100,
          high: price + 400,
          low: price - 100,
          close: price + 150),
      ChartSampleData(
          x: 4,
          open: price + 100,
          high: price + 150,
          low: price - 30,
          close: price + 20),
      ChartSampleData(
          x: 5,
          open: price - 120,
          high: price + 20,
          low: price - 120,
          close: price - 50),
      ChartSampleData(
          x: 6,
          open: price - 20,
          high: price + 20,
          low: price - 20,
          close: price + 20),
      ChartSampleData(
          x: 7,
          open: price - 30,
          high: price,
          low: price - 40,
          close: price - 30),
      ChartSampleData(
          x: 8,
          open: price - 15,
          high: price + 2,
          low: price - 15,
          close: price + 1),
      ChartSampleData(
          x: 9,
          open: price + 5,
          high: price + 15,
          low: price,
          close: price + 2),
      ChartSampleData(
          x: 10,
          open: price + 1,
          high: price + 15,
          low: price - 80,
          close: price + 10),
      ChartSampleData(
          x: 11,
          open: price + 100,
          high: price + 125,
          low: price - 50,
          close: price - 5),
      ChartSampleData(
          x: 12,
          open: price - 70,
          high: price - 125,
          low: price - 150,
          close: price - 125),
      ChartSampleData(
          x: 13,
          open: price - 1,
          high: price + 125,
          low: price - 125,
          close: price + 50),
      ChartSampleData(
          x: 14,
          open: price - 30,
          high: price + 200,
          low: price - 100,
          close: price - 50),
      ChartSampleData(
          x: 15,
          open: price + 30,
          high: price + 125,
          low: price - 100,
          close: price - 100),
    ];
  }
}
