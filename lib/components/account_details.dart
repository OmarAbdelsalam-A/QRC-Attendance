import 'package:flutter/material.dart';
import '/constants.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({
    super.key,
    required this.name,
    required this.title,
  });

  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: kAvatarRadius,
          backgroundImage: kAvatarImage,
        ),
        Text(
          name,
          style: kNameTextStyle,
        ),
        Text(
          title,
          style: kTitleTextStyle,
        ),
        const SizedBox(
          height: kDividerHeight,
          width: kDividerWidth,
          child: Divider(color: kDividerColor),
        ),
      ],
    );
  }
}
