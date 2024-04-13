import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:town/core/constant/color.dart';
import 'package:town/core/constant/size.dart';

void customDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          content: Text(message),
        ),
      );
    },
  );
}

void customSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Container(
        child: Center(
          child: Text(
            message,
            style: TextStyle(fontSize: size15),
          ),
        ),
      ),
      duration: Duration(seconds: 1),
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.1,
        left: 16,
        right: 16,
      ),
      behavior: SnackBarBehavior.floating,
    ),
  );
}

Widget basicButton({
  required BuildContext context,
  required VoidCallback onTap,
  required Color buttonColor,
  required Color textColor,
  required String text,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      height: MediaQuery.of(context).size.height * 0.075,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: buttonColor,
        border:
            buttonColor == Colors.white ? Border.all(color: k3DColor) : null,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: size15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  );
}

Widget customTextFormField({
  required BuildContext context,
  required String hintText,
  required bool obscureText,
  TextEditingController? controller,
  String? suffix,
  VoidCallback? suffixOnTap,
}) {
  return TextFormField(
    obscureText: obscureText,
    controller: controller,
    style: TextStyle(decorationThickness: 0),
    decoration: InputDecoration(
      suffix: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: suffix != null
            ? InkWell(
                onTap: suffixOnTap,
                child: Text(
                  "${suffix}",
                  style: TextStyle(
                    color: k3DColor,
                    fontSize: size15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : null,
      ),
      border: InputBorder.none,
      hintText: "${hintText}",
      hintStyle: TextStyle(
        color: kC8Color,
        fontSize: size15,
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: k3DColor),
        borderRadius: BorderRadius.circular(100),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: kE8Color),
        borderRadius: BorderRadius.circular(100),
      ),
    ),
  );
}
