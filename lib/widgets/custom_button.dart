import 'package:flutter/material.dart';

import '../utils/styles/custom_text_style.dart';

class CustomButton extends StatelessWidget {
  final String? buttonText;
  final VoidCallback? onButtonClick;
  final Color? buttonColor;
  final double? buttonWidth;

  const CustomButton(
      {super.key,
      this.buttonText,
      this.onButtonClick,
      this.buttonColor,
      this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonClick,
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 45, bottom: 20),
        width: buttonWidth ?? MediaQuery.of(context).size.width / 1.15,
        height: MediaQuery.of(context).size.height / 13,
        decoration: BoxDecoration(
            color: buttonColor ?? Colors.pink,
            borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(buttonText!, style: CustomTextStyle.smallBold),
        ),
      ),
    );
  }
}
