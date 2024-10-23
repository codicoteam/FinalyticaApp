import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: PrimaryColors.darkblue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: PrimaryColors.darkblue,
            child: Center(
              child: Container(
                height: 400,
                width: 300,
                child: Image.asset("assets/images/fynalica_logo.png"),
              ),
            ),
          ),
        ],
      ),
     
    );
  }
}