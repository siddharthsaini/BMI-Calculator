import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCard extends StatelessWidget {
  AddCard({this.changeCard, this.change, this.onPress});

  final Widget changeCard;
  final Color change;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: change,
            ),
            child: changeCard, // <- IMPORTANT STEP
          ),
        ),
      ),
    );
  }
}

class GenderCard extends StatelessWidget {
  GenderCard({this.icon, this.gender});

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: FaIcon(icon),
          onPressed: null,
          disabledColor: Colors.white,
          iconSize: 70,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(gender),
        ),
      ],
    );
  }
}
