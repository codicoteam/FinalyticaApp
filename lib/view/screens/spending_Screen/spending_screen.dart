import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:financialanalysis/view/templates/home_templates/recent_transactions.dart';
import 'package:financialanalysis/view/templates/transactions.dart';
import 'package:financialanalysis/view/widgets/donut.dart';
import 'package:flutter/material.dart';

class SpendingScreen extends StatefulWidget {
  const SpendingScreen({super.key});

  @override
  State<SpendingScreen> createState() => _SpendingScreenState();
}

class _SpendingScreenState extends State<SpendingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(95),
        child: ClipRRect(
          child: Container(
            decoration: BoxDecoration(
              color: PrimaryColors.darkblue,
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 35,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.cancel,
                                size: 21,
                                color: Colors.white,
                              ),
                              Text(
                                'Transfer ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              const Icon(
                                Icons.search,
                                size: 21,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Spending in December ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: PrimaryColors.darkblue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(height: 300, child: DonutW()),
              Container(height: 320, child: Transactions())
            ],
          ),
        ),
      ),
    );
  }
}
