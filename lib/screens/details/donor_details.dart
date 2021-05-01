import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DonorDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SvgPicture.asset("assets/images/bg.svg", fit: BoxFit.fill),
      ]),
    );
  }
}
