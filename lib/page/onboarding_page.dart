import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen_example/page/home_page.dart';
import 'package:onboarding_screen_example/widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'WE PROVIDE BEST SERVICE EVER',
              body: 'We will serve you well so that you remain handsome and stylish',
              image: buildImage('assets/image3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'STYLE THAT FITS YOUR LIFSTYLE ',
              body: 'Choose our makeup special offer Price package that fit your lifestyle',
              image: buildImage('assets/image5.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'FIND AND BOOK SERVICES',
              body: 'Find and Book barber, Beauty, Salon and Spa services anywhere anytime',
              image: buildImage('assets/image6.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'STYLE THAT FITS YOUR LIFESTYLE',
              body: 'Chose Makeup special offer price Package that fits your Lifestyle',
              footer: ButtonWidget(
                text: 'Start Exploring',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/image7.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Home', style: TextStyle(fontWeight: FontWeight.w600)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: Text('Skip'),
          onSkip: () => goToHome(context),
          next: Icon(Icons.arrow_forward),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
          skipFlex: 0,
          nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
