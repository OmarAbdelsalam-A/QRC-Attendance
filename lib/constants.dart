import 'package:flutter/material.dart';

const double kDividerHeight = 22.0;
const double kDividerWidth = 150.0;
const Color kDividerColor = Color(0xFF8D8E98);

const double kAvatarRadius = 50.0;
const ImageProvider kAvatarImage = AssetImage('images/profile.jpg');

const String kName = 'Omar Abdelsalam';
const String kTitle = 'Flutter Developer';
const int kId = 101;

const EdgeInsetsGeometry kButtonTextPadding = EdgeInsets.all(8.0);
const Color kButtonIconColor = Color(0xFF8D8E98);
const Widget kSeparator = SizedBox(width: 10.0);

const double kSignInButtonVerticalMargin = 10.0;
const double kSignInButtonHorizontalMargin = 15.0;

const double kSignOutButtonVerticalMargin = 10.0;
const double kSignOutButtonHorizontalMargin = 15.0;

const double kScanQRCodeButtonVerticalMargin = 10.0;
const double kScanQRCodeButtonHorizontalMargin = 90.0;

const EdgeInsetsGeometry kScreenTopPadding = EdgeInsets.only(top: 200.0);

const kNameTextStyle = TextStyle(
  fontFamily: 'Pacifico',
  fontSize: 40.0,
  color: Colors.white,
  fontWeight: FontWeight.bold,
  letterSpacing: 3.0,
);

const kTitleTextStyle = TextStyle(
  fontFamily: 'Sans',
  fontWeight: FontWeight.bold,
  fontSize: 20.0,
  letterSpacing: 3.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Sans',
  color: Colors.black,
);

Decoration kButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(10.0),
  color: Colors.white,
);
