import 'package:flutter/material.dart';

class ReviewPaymentSection extends StatelessWidget {
  const ReviewPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _LinkRow(
          title: 'Payment',
          actionText: 'Add Payment',
          onTap: () {},
        ),
        _LinkRow(
          title: 'Promos',
          actionText: 'Add Promo Code',
          onTap: () {},
        ),
      ],
    );
  }
}

class _LinkRow extends StatelessWidget {
  final String title;
  final String actionText;
  final VoidCallback onTap;

  const _LinkRow({
    required this.title,
    required this.actionText,
    required this.onTap,
  });

  static const Color _purple = Color(0xFF6750A4);
  static const Color _textGray = Color(0xFF625B71);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                color: _textGray,
              ),
            ),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              actionText,
              style: const TextStyle(
                color: _purple,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}