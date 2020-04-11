import 'package:flutter/material.dart';
import 'package:hmm/calculation.dart';
import 'package:hmm/valuecards.dart';
import 'homescreen.dart';
import 'constants.dart';
import 'resultpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbShape: RoundSliderThumbShape(
            enabledThumbRadius: 15,
          ),
          overlayShape: RoundSliderOverlayShape(
            overlayRadius: 27,
          ),
          thumbColor: kbottomAppBar,
          overlayColor: Color(0x30EB1555),
          activeTrackColor: Colors.white,
          inactiveTrackColor: kThemeBackgroudColor,
        ),
        primaryColor: kbottomAppBar,
        scaffoldBackgroundColor: kThemeBackgroudColor,
        //  active - #1D1E33
        //inactive - #111328
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/result': (context) => Result(),
      },
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: kbottomAppBar,
        child: FlatButton(
          onPressed: () {
            Calculation brain = Calculation(
              height: height,
              weight: weight,
            );

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Result(
                  bmi: brain.calcBMI(),
                  resultText: brain.getResult(),
                  interpretation: brain.getInterpretation(),
                ),
              ),
            );
          },
          child: Container(
            child: Center(
              child: Text(
                "CALCULATE",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            height: 60,
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: HomeScreen(),
    );
  }
}
