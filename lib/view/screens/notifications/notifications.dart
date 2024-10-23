import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:financialanalysis/view/screens/notifications/support_notification/support_noti.dart';
import 'package:financialanalysis/view/screens/notifications/transaction_noti/transaction.dart';
import 'package:financialanalysis/view/screens/statistics_screens/income_screen/income_screen.dart';
import 'package:financialanalysis/view/screens/statistics_screens/outcome_screen/outcome_screen.dart';
import 'package:financialanalysis/view/screens/statistics_screens/reports_screen/report_screen.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                  text: 'Transactions',
                ),
                Tab(
                  text: 'Support',
                ),
                
              ],
            ),
            title: const Text(
              'Notifications ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: const TabBarView(
            children: [
              TrnsactionNoti(),
              SuportNotifications(),
           
            ],
          ),
        ),
      ),
    );
  }
}
