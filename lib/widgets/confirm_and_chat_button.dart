import 'package:flutter/material.dart';

class ConfirmAndChatButton extends StatelessWidget {
  const ConfirmAndChatButton({super.key});

  static const Color _purple = Color(0xFF6750A4);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: _purple,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: const Text(
          'Confirm and Chat',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}