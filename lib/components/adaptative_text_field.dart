import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeTextField extends StatelessWidget {
  const AdaptativeTextField({
    required this.controller,
    required this.keyboardType,
    required this.onSubmitted,
    required this.label,
    super.key,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) onSubmitted;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          child: CupertinoTextField(
            controller: controller,
            keyboardType: keyboardType,
            onSubmitted: onSubmitted,
            placeholder: label,
            padding: EdgeInsets.symmetric(
              horizontal: 6,
              vertical: 12,
            ),
          ),
        )
        : TextField(
          controller: controller,
          keyboardType: keyboardType,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(labelText: label),
        );
  }
}
