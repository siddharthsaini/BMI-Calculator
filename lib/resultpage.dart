import 'package:flutter/material.dart';
import 'package:hmm/constants.dart';
import 'constants.dart';

class Result extends StatelessWidget {
  Result({
    @required this.bmi,
    @required this.interpretation,
    @required this.resultText,
  });

  final double bmi;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BMI RESULT"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5),
              child: Text(
                "Your Result",
                style: largeFont,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kactive,
                  ), // <- IMPORTANT STEP
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          resultText,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.green,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          bmi.toStringAsFixed(1),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 90,
                          ),
                        ),
                        Text(
                          interpretation,
                          style: regularFont,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: FlatButton(
          color: kbottomAppBar,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            child: Center(
              child: Text(
                "RE-CALCULATE",
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            height: 60,
          ),
        ),
      ),
    );
  }
}
