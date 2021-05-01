import 'package:flutter/material.dart';
import 'package:flutter_app/screens/details/donor_details.dart';
import 'package:flutter_app/screens/details/patient_details.dart';
import 'package:flutter_app/utilities/styles.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatelessWidget {
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
                  "Register as",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CM Sans Serif'),
                ),
                Spacer(flex: 4),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DonorDetails()),
                    ),
                    child: Text(
                      'Donor',
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CM Sans Serif'),
                    ),
                  ),
                ),
                Spacer(flex: 2),
                Text(
                  'OR',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'CM Sans Serif'),
                ),
                Spacer(flex: 2),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      gradient: kPrimaryGradient2,
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    child: GestureDetector(
                       onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PatientDetails()),
                    ),
                      child: Text(
                        'Patient',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'CM Sans Serif'),
                      ),
                    ),
                  ),
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
