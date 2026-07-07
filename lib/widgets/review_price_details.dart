import 'package:flutter/material.dart';

class ReviewPriceDetails extends StatelessWidget {
  const ReviewPriceDetails({super.key});

  static const Color _textGray = Color(0xFF625B71);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Text(
          'Price Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 20),
        _PriceRow(title: 'Hourly Rate', value: '\$18/hr'),
        SizedBox(height: 16),
        _PriceRow(title: 'Support Fee', value: '\$10'),
        Divider(height: 36),
        _PriceRow(
          title: 'Total Rate',
          value: '\$28',
          isTotal: true,
        ),
        SizedBox(height: 18),
        Text(
          'Your payment method may temporarily show a hold '
          'in the amount of \$15 per hour, which is the rate of '
          'your Tasker. You have the option to cancel anytime. '
          'However, cancellations made less than 24 hours before '
          'the scheduled start time may incur a cancellation fee '
          'equivalent to one hour of service. Please note that all '
          'tasks have a minimum of one hour charge.',
          style: TextStyle(
            fontSize: 14,
            height: 1.55,
            color: _textGray,
          ),
        ),
      ],
    );
  }
}

class _PriceRow extends StatelessWidget {
  final String title;
  final String value;
  final bool isTotal;

  const _PriceRow({
    required this.title,
    required this.value,
    this.isTotal = false,
  });

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(
      fontSize: isTotal ? 20 : 16,
      fontWeight: isTotal ? FontWeight.w600 : FontWeight.w400,
      color: isTotal ? Colors.black : ReviewPriceDetails._textGray,
    );

    return Row(
      children: [
        Expanded(
          child: Text(title, style: style),
        ),
        Text(value, style: style),
      ],
    );
  }
}