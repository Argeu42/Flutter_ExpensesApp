import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptativeButton extends StatelessWidget {
  const AdaptativeButton({required this.label, required this.onPressed, super.key});

  final String label;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
          onPressed: ()=> onPressed(),
          color: Theme.of(context).colorScheme.surface,
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Text(label),
        )
        : ElevatedButton(
          onPressed: ()=> onPressed(),
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            textStyle: TextStyle(
              color: Theme.of(context).colorScheme.surface,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: Text(label),
        );
  }
}
