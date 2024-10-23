import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:financialanalysis/view/screens/statistics_screens/income_screen/income_screen.dart';
import 'package:financialanalysis/view/screens/statistics_screens/outcome_screen/outcome_screen.dart';
import 'package:financialanalysis/view/screens/statistics_screens/reports_screen/report_screen.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: PrimaryColors.darkblue,
            bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              tabs: [
                Tab(
                  text: 'Income',
                ),
                Tab(
                  text: 'Outcome',
                ),
                Tab(
                  text: 'Reports',
                ),
              ],
            ),
            title: const Text(
              'Statistics ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: const TabBarView(
            children: [
              IncomeScreen(),
              OutcomeScreen(),
              ReportScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
