import 'package:flutter/material.dart';
import 'constants.dart';

  int height = 180;

class Height extends StatefulWidget {
  @override
  _HeightState createState() => _HeightState();
}

class _HeightState extends State<Height> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text("HEIGHT (CM)"),
        ),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                "$height",
                style: largeFont,
              ),
              Text(
                " cm",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
        Slider(
          value: height.toDouble(),
          onChanged: (newHeight) {
            setState(
              () {
                height = newHeight.toInt();
              },
            );
          },
          min: 10,
          max: 300,
        ),
      ],
    );
  }
}

/////////////

class AgeWeightButton extends StatelessWidget {
  AgeWeightButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: kAgeWeightButton, // button color
        child: InkWell(
          splashColor: kbottomAppBar, // inkwell color
          child: SizedBox(
            width: 40,
            height: 40,
            child: Icon(icon),
          ),
          onTap: onPressed,
        ),
      ),
    );
  }
}
