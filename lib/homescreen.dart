import 'package:flutter/material.dart';
import 'cards.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'valuecards.dart';
import 'constants.dart';

  int weight = 65;
  int age = 21;

enum Gender {
  m,
  f,
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color male = kinactive;
  Color female = kinactive;

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AddCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.m;
                    });

                  },
                  change: selectedGender == Gender.m
                      ? male = kactive
                      : male = kinactive,
                  changeCard: GenderCard(
                    icon: FontAwesomeIcons.mars,
                    gender: "MALE",
                  ),
                ),
                AddCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.f;
                    });
                  },
                  change: selectedGender == Gender.f
                      ? female = kactive
                      : female = kinactive,
                  changeCard: GenderCard(
                    icon: FontAwesomeIcons.venus,
                    gender: "FEMALE",
                  ),
                ),
              ],
            ),
          ),
          AddCard(
            change: kactive,
            changeCard: Height(),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AddCard(
                  change: kactive,
                  changeCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("WEIGHT"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          weight.toString(),
                          style: largeFont,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          AgeWeightButton(
                            icon: Icons.remove,
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                          AgeWeightButton(
                            icon: Icons.add,
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                AddCard(
                  change: kactive,
                  changeCard: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("AGE"),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          age.toString(),
                          style: largeFont,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          AgeWeightButton(
                            icon: Icons.remove,
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                          AgeWeightButton(
                            icon: Icons.add,
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
