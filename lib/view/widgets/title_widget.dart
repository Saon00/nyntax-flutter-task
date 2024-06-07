import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';

class TitleWidget extends StatelessWidget {
  final String titleText;
  const TitleWidget({
    required this.titleText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Divider(
          color: primaryBlue,
          height: 1,
        )
      ],
    );
  }
}
