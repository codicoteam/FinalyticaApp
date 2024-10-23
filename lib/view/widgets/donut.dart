import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DonutW extends StatefulWidget {
  const DonutW({super.key});

  @override
  State<DonutW> createState() => _DonutWState();
}

class _DonutWState extends State<DonutW> {
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 250,
          child: Stack(
            children: [
              PieChart(
                PieChartData(
                  startDegreeOffset: 250,
                  sectionsSpace: 0,
                  centerSpaceRadius: 100,
                  sections: [
                    PieChartSectionData(
                      value: 45,
                      color: Colors.greenAccent,
                      radius: 45,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 35,
                      color: Colors.blue.shade900,
                      radius: 25,
                      showTitle: false,
                    ),
                    PieChartSectionData(
                      value: 20,
                      color: Colors.grey.shade400,
                      radius: 20,
                      showTitle: false,
                    ),
                  ],
                ),
              ),
              Positioned.fill(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 10.0,
                            spreadRadius: 10.0,
                            offset: const Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Text(
                          "2305",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
}

