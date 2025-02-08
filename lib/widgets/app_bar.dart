 import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar appBar({required String title}) {
    return AppBar(
      leading: Center(
        child: Icon(FontAwesomeIcons.arrowLeftLong),
      ),
      title: Text(
        title,
        style: Styles.medium25,
      ),
      centerTitle: true,
    );
  }