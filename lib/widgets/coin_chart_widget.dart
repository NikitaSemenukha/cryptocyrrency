import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../models/models.dart';

class CoinChartWidget extends StatelessWidget {
  final Key key;
  final List<ChartData> data;
  final UsdModel coinPrice;
  final Color color;

  const CoinChartWidget({
    required this.key,
    required this.data,
    required this.coinPrice,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 16.0),
              height: 96.0,
              width: double.infinity,
              child: SfCartesianChart(
                key: key, // Указываем ключ здесь
                plotAreaBorderWidth: 0,
                primaryXAxis: CategoryAxis(isVisible: false),
                primaryYAxis: CategoryAxis(isVisible: false),
                legend: Legend(isVisible: false),
                tooltipBehavior: TooltipBehavior(enable: false),
                series: <CartesianSeries<dynamic, dynamic>>[
                  LineSeries<ChartData, String>(
                    dataSource: data,
                    xValueMapper: (ChartData sales, _) => sales.year.toString(),
                    yValueMapper: (ChartData sales, _) => sales.value,
                  ),
                ],
              ),
            ),
          ),
          color == Colors.green
              ? Container()
              : Container(
            padding: const EdgeInsets.all(4.0),
            margin: const EdgeInsets.only(right: 16.0),
            alignment: Alignment.center,
            width: 72,
            height: 36,
            decoration: BoxDecoration(
                color: coinPrice.percentChange_7d >= 0
                    ? Colors.green
                    : Colors.red,
                borderRadius: BorderRadius.circular(16.0)),
            child: Text(
              coinPrice.percentChange_7d.toStringAsFixed(2) + "%",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
