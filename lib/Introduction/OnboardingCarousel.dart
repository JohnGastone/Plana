// ignore_for_file: file_names

import 'package:plana/Home/HomePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboardingcarousel extends StatelessWidget {
  final Color kDarkBlueColor = const Color.fromARGB(255, 95, 209, 211);

  const Onboardingcarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonText: 'Get Organized',
      onFinish: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      },
      finishButtonStyle: FinishButtonStyle(
        backgroundColor: kDarkBlueColor,
      ),
      skipTextButton: Text(
        'Skip',
        style: GoogleFonts.poppins(
          fontSize: 16,
          color: kDarkBlueColor,
          fontWeight: FontWeight.w600,
        ),
      ),
      trailingFunction: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const Onboardingcarousel(),
          ),
        );
      },
      controllerColor: kDarkBlueColor,
      totalPage: 3,
      headerBackgroundColor: Colors.white,
      pageBackgroundColor: Colors.white,
      background: [
        Image.asset(
          'assets/organize.png',
          height: 400,
          width: 400,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 38.0),
          child: Image.asset(
            'assets/simplify.png',
            height: 400,
            width: 300,
            fit: BoxFit.cover,
          ),
        ),
        Image.asset(
          'assets/goals.png',
          height: 400,
          width: 400,
          fit: BoxFit.cover,
        ),
      ],
      speed: 1.8,
      pageBodies: [
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 430,
              ),
              Text(
                'Organize your World',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: kDarkBlueColor,
                  fontSize: 34.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Effortlessly keep track of all your tasks, projects, and goals in one place.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.blueGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 430,
              ),
              Text(
                'Simplify Your Workflow.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: kDarkBlueColor,
                  fontSize: 34.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Create, assign, and prioritize tasks with ease, ensuring nothing falls through the cracks.',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.blueGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 415,
              ),
              Text(
                'Achieve Your Goals',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: kDarkBlueColor,
                  fontSize: 33.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Track your progress, stay focused, and accomplish more with our powerful task management tools.",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.blueGrey,
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
