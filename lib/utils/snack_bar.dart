import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

void snackBar(BuildContext context, String message) {
  Flushbar(
    message: message,
    icon: Icon(
      Icons.notifications,
      color: Colors.white,
    ),
    shouldIconPulse: false,
    duration: Duration(seconds: 3),
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: Colors.black,
    margin: EdgeInsets.all(16),
    borderRadius: BorderRadius.circular(100),
    animationDuration: Duration(milliseconds: 300),
    forwardAnimationCurve: Curves.easeInOut,
    reverseAnimationCurve: Curves.easeOut,
    blockBackgroundInteraction: true,
  ).show(context);
}
