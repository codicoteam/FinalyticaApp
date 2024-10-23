import 'package:financialanalysis/helpers/navigation_helper.dart';
import 'package:financialanalysis/utils/colors/primary_colors.dart';
import 'package:financialanalysis/view/screens/auth_screens/login_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    var pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.w700,
          color: PrimaryColors.darkblue),
      bodyTextStyle: bodyStyle,
      bodyPadding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: const EdgeInsets.only(top: 70),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      allowImplicitScrolling: true,
      autoScrollDuration: 5000,
      infiniteAutoScroll: false,
      globalHeader: Align(
        alignment: Alignment.topRight,
        child: SafeArea(child: SizedBox()),
      ),
      globalFooter: SizedBox(),
      pages: [
        PageViewModel(
          title: "Welcome to Finalytica",
          body:
              "Empowering You to Make Smart Financial Choices with AI-Driven Insights",
          image: _buildImage('welcome.png'),
          decoration: pageDecoration,
        ),
        
        PageViewModel(
          title: "Personalized Loan Guidance",
          body: "Compare and Choose the Best Loan Options Tailored to Your Needs.",
          image: _buildImage('onboard2.png'),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Smarter Spending Decisions",
          body:
              "Optimize Your Purchases with AI-Powered Recommendations.",
          image: _buildImage('onboard3.png'),
          decoration: pageDecoration.copyWith(
            bodyFlex: 4,
            imageFlex: 4,
          ),
        ),
        PageViewModel(
          title: "Seamless Banking Integration.",
          body:
              " Connect Effortlessly with Your Bank for a Unified Financial Experience.",
          image: _buildImage('onboard4.png'),
          decoration: pageDecoration.copyWith(
            bodyFlex: 4,
            imageFlex: 4,
          ),
        ),
      ],
      onDone: (){
        Helpers.permanentNavigator(context, LoginPage());
      }, 
      onSkip: (){
        Helpers.permanentNavigator(context, LoginPage());
      }, // You can override onSkip callback
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: false,

      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      skip: Text('Skip', style: TextStyle(fontWeight: FontWeight.w600 , color: PrimaryColors.darkblue)),
      next:  Icon(Icons.arrow_forward, color: PrimaryColors.darkblue,),
      done:  Text('Done', style: TextStyle(fontWeight: FontWeight.w600, color: PrimaryColors.darkblue)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator:  DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeColor: PrimaryColors.darkblue ,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator:  ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _onBackToIntro(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => const OnBoardingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("This is the screen after Introduction"),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _onBackToIntro(context),
              child: const Text('Back to Introduction'),
            ),
          ],
        ),
      ),
    );
  }
}
