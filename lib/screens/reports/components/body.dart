import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:rentdiary/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, double> dataMap = new Map();
    dataMap.putIfAbsent("Savings", () => 47000);
    dataMap.putIfAbsent("Expenditure", () => 25000);

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
            top: kDefaultPadding * 2, left: kDefaultPadding * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Total Rent Collected'),
              subtitle: Text('INR. 72000'),
            ),
            ListTile(
              title: Text('Total Expenses'),
              subtitle: Text('INR. 25000'),
            ),
            SizedBox(height: 40),
            PieChart(
              dataMap: dataMap,
              showChartValuesInPercentage: true,
              showChartValues: true,
              showChartValuesOutside: false,
            ),
          ],
        ),
      ),
    );
  }
}
