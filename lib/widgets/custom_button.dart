import 'package:custom_checkout_ui/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.label, this.onPressed, this.isLoading = false});
  final String label;
  final void Function()? onPressed;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            backgroundColor: Color(0xff34A853),
            elevation: 0,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.all(24),
          ),
          child: isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : Text(
                  label,
                  style: Styles.medium22.copyWith(color: Colors.black),
                )),
    );
  }
}
