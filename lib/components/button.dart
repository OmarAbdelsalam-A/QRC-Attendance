import 'package:flutter/material.dart';
import '/constants.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.horizontalMargin,
    required this.verticalMargin,
  });

  final GestureTapCallback onTap;
  final double horizontalMargin;
  final double verticalMargin;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: Container(
        decoration: kButtonDecoration,
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        child: Padding(
          padding: kButtonTextPadding,
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Icon(
                    icon,
                    color: kButtonIconColor,
                  ),
                  kSeparator,
                  Text(
                    text,
                    style: kButtonTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
