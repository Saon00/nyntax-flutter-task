import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';

class InputFormWidget extends StatelessWidget {
  final String headingText;
  final String? asteric;
  final TextEditingController controller;
  const InputFormWidget({
    super.key,
    required this.headingText,
    required this.controller,
    this.asteric,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: headingText,
              style: const TextStyle(color: Colors.black, fontSize: 15)),
          TextSpan(
              text: asteric,
              style: TextStyle(
                  fontSize: 15,
                  color: redColor,
                  fontFeatures: const [FontFeature.superscripts()]))
        ])),
        const SizedBox(height: 5),

        // inputbox
        TextFormField(
          cursorColor: primaryBlue,
          keyboardType: TextInputType.text,
          controller: controller,
          decoration: InputDecoration(
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: greyColor)),
              enabledBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: greyColor)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: greyColor.withOpacity(.5)))),
        )
      ],
    );
  }
}
