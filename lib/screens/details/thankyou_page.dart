import 'package:flutter/material.dart';
import 'package:flutter_app/screens/details/donor_details.dart';
import 'package:flutter_app/screens/details/patient_details.dart';
import 'package:flutter_app/utilities/styles.dart';
import 'package:flutter_svg/svg.dart';

class ThankyouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset("assets/images/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Column(
              children: [
                Spacer(flex: 2),
                Text(
                  "Thank you!",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CM Sans Serif'),
                ),
                Spacer(flex: 4),
                Spacer(flex: 2),
                Text(
                  'We have received your details, someone will get back to you shortly, please wait until then. \n Your Patience is highly appriciated',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CM Sans Serif'),
                ),
                Spacer(flex: 2),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
