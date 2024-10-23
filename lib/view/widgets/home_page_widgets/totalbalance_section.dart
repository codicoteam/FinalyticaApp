import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:flutter/material.dart';

class TotalBalanceSection extends StatefulWidget {
  const TotalBalanceSection({super.key});

  @override
  State<TotalBalanceSection> createState() => _TotalBalanceSectionState();
}

class _TotalBalanceSectionState extends State<TotalBalanceSection> {


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 8, bottom: 4),
            child: Row(
              children: [
                Text(
                  "Total Balance",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 6),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/dolllar.png',
                      width: 35,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Text(
                "34,553,90",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          
        ],
      ),
    );
  }
}
