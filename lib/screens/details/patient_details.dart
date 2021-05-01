import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/screens/details/thankyou_page.dart';
import 'package:flutter_app/utilities/styles.dart';
import 'package:flutter_svg/svg.dart';

import '../register.dart';

class PatientDetails extends StatefulWidget {
  @override
  _PatientDetailsState createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  final int _numPages = 6;

  final PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;
  String genderValues = 'Male';
  String bloodGroupValues = 'A+';
  String cityValues = 'Delhi';

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 7.0),
      height: 4.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 500.0,
                    child: PageView(
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: <Widget>[
                          //Patients Name
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 30.0),
                                Text(
                                  'Enter Patients Full Name',
                                  style: kBlackTitleStyle,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Full Name',
                                    hintText: 'Enter Patients Name',
                                  ),
                                ),
                                SizedBox(height: 25.0),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                          Icons.keyboard_arrow_right_outlined)),
                                )
                              ],
                            ),
                          ),
                          //Donor City
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 30.0),
                                Text(
                                  'Select Your City',
                                  style: kBlackTitleStyle,
                                ),
                                SizedBox(height: 15.0),
                                DropdownButton<String>(
                                  value: cityValues,
                                  iconSize: 24,
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.black,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      genderValues = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Delhi',
                                    'Faridabad',
                                    'Gurugram',
                                    'Ghaziabad',
                                    'Noida',
                                    'Greater Noida'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value, style: kBlueTextStyle),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(height: 25.0),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                          Icons.keyboard_arrow_right_outlined)),
                                )
                              ],
                            ),
                          ),
                          //Donor Contact Number
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 30.0),
                                Text(
                                  'Enter Your Contact Number',
                                  style: kBlackTitleStyle,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Mobile Number',
                                    hintText: 'Mobile Number',
                                  ),
                                ),
                                SizedBox(height: 25.0),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                          Icons.keyboard_arrow_right_outlined)),
                                )
                              ],
                            ),
                          ),
                          //Donor Email Address
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 30.0),
                                Text(
                                  'Enter Your Email Address',
                                  style: kBlackTitleStyle,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Email Address',
                                    hintText: 'Email Address',
                                  ),
                                ),
                                SizedBox(height: 25.0),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                          Icons.keyboard_arrow_right_outlined)),
                                )
                              ],
                            ),
                          ),
                          //Donor Email Address
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 30.0),
                                Text(
                                  'Enter Hospital Location',
                                  style: kBlackTitleStyle,
                                ),
                                SizedBox(height: 15.0),
                                TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Hospital',
                                    hintText: 'Hospital Location',
                                  ),
                                ),
                                SizedBox(height: 25.0),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                          Icons.keyboard_arrow_right_outlined)),
                                )
                              ],
                            ),
                          ),
                          //Donor Gender
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 30.0),
                                Text(
                                  'Select Patient\'s Gender',
                                  style: kBlackTitleStyle,
                                ),
                                SizedBox(height: 15.0),
                                DropdownButton<String>(
                                  value: genderValues,
                                  iconSize: 24,
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.black,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      genderValues = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'Male',
                                    'Female',
                                    'Others',
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value, style: kBlueTextStyle),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(height: 25.0),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                          Icons.keyboard_arrow_right_outlined)),
                                )
                              ],
                            ),
                          ),
                          //Donor Blood Group
                          Padding(
                            padding: EdgeInsets.all(40.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 30.0),
                                Text(
                                  'Select Patient\'s Blood Group',
                                  style: kBlackTitleStyle,
                                ),
                                SizedBox(height: 15.0),
                                DropdownButton<String>(
                                  value: bloodGroupValues,
                                  iconSize: 24,
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.black),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.black,
                                  ),
                                  onChanged: (String newValue) {
                                    setState(() {
                                      bloodGroupValues = newValue;
                                    });
                                  },
                                  items: <String>[
                                    'A+',
                                    'A-',
                                    'B+',
                                    'B-',
                                    'O+',
                                    'O-',
                                    'AB+',
                                    'AB-'
                                  ].map<DropdownMenuItem<String>>(
                                      (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value, style: kBlueTextStyle),
                                    );
                                  }).toList(),
                                ),
                                SizedBox(height: 25.0),
                                Container(
                                  alignment: Alignment.bottomRight,
                                  child: FloatingActionButton(
                                      onPressed: () {
                                        _pageController.nextPage(
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                      },
                                      child: Icon(
                                          Icons.keyboard_arrow_right_outlined)),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  _currentPage != _numPages - 1
                      ? Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomRight,
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                              ),
                              onPressed: () {
                                _pageController.nextPage(
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.ease,
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Next',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                  SizedBox(width: 5.0),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                    size: 13.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : Text(''),
                ]),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 60.0,
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThankyouPage()),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontFamily: 'CM Sans Serif',
                        color: Color(0xFF5B16D0),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            )
          : Text(''),
    );
  }
}
