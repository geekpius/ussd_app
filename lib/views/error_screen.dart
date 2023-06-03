import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    Key? key,
    this.exception,
  }) : super(key: key);

  final Exception? exception;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Page Not Found!',
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.red,
          ),
        ),
        Text(
          '$exception',
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.redAccent,
          ),
        ),

      ],
    );
  }
}
