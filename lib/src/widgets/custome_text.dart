import 'package:flutter/material.dart';
import 'package:onlinemomo/src/widgets/commons.dart';

class CustomeText extends StatelessWidget {
  final String text;
  final double size;
  final Color colors;
  final FontWeight weight;
  CustomeText({@required this.text, this.colors, this.size, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size ?? 16,
          color: colors ?? black,
          fontWeight: weight ?? FontWeight.bold),
    );
  }
}
