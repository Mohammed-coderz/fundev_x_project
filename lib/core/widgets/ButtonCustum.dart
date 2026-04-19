import 'package:flutter/material.dart';
import 'package:sevices/core/theme/colors_manager.dart';

class ButtonCustum extends StatelessWidget {
  final String? textButton;
  final void Function()? onPressed;
  final Color? backgroundColor;
  final Color? textColor;

  const ButtonCustum({
    this.textButton,
    this.onPressed,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? ColorsManager.mainBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          textButton ?? "Login",
          style: TextStyle(fontSize: 16, color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
