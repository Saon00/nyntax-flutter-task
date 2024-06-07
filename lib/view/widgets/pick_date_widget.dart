import 'package:flutter/material.dart';
import 'package:nyntaxfluttertask1/view/pages/constants.dart';

class PickDateWidget extends StatelessWidget {
  final String headingText;
  final TextEditingController controller;
  const PickDateWidget({
    super.key,
    required this.headingText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // reservatin id
        RichText(
            text: TextSpan(children: [
          TextSpan(
              text: headingText,
              style: const TextStyle(color: Colors.black, fontSize: 15)),
          TextSpan(
              text: "*",
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
              suffixIcon: IconButton(
                color: greyColor,
                icon: const Icon(Icons.calendar_month),
                onPressed: () {},
              ),
              hintText: "Select Date and Time",
              focusedBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: greyColor)),
              enabledBorder:
                  OutlineInputBorder(borderSide: BorderSide(color: greyColor)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: greyColor.withOpacity(.5)))),
        )
      ],
    );
  }
}
