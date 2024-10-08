import 'package:flutter/material.dart';

class CommonWidget extends StatelessWidget {
  final String text;
  const CommonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
