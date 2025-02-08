import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      backgroundColor: Color(0xFFEDEDED),
      child: CircleAvatar(
        radius: 35,
        backgroundColor: Color(0xff34A853),
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}

