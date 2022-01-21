import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constents.dart';

class WeightBox extends StatefulWidget {
  const WeightBox({Key? key}) : super(key: key);

  @override
  _WeightBoxState createState() => _WeightBoxState();
}

class _WeightBoxState extends State<WeightBox> {
  var number = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'WEIGHT',
          style: kLabelTextStyle,
        ),
        Text(
          "$number",
          style: kLargeLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _decrementButton(),
            _incrementButton()
          ],
        )
      ],
    );
  }

  Widget _decrementButton() {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            if (number > 1) {
              number--;
            }
          });
        },
        child: Text("-", style: TextStyle(color: Colors.white, fontSize: 45.0),),
        backgroundColor: Color(0xFF464654)
    );
  }

  Widget _incrementButton() {
    return FloatingActionButton(
        onPressed: () {
          setState(() {
            number++;
          });
        },
        child: Text("+", style: TextStyle(color: Colors.white, fontSize: 35.0),),
        backgroundColor: Color(0xFF464654)
    );
  }
}


