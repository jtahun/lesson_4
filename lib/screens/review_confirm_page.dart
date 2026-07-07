import 'package:flutter/material.dart';

class ReviewConfirmPage extends StatelessWidget {
  const ReviewConfirmPage({super.key});

/*
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('TEST'),
      ),
      body: const Center(
        child: Text(
          'SECOND SCREEN',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}*/

  static const Color purple = Color(0xFF6750A4);
  static const Color textGray = Color(0xFF625B71);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Review and Confirm',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(
                  child: Text(
                    'Time and date',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Column(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/profile_photo.png',
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Dianne Russell',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: textGray,
                      ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 8),

            const _InfoRow(
              icon: Icons.calendar_month_outlined,
              text: 'Friday - May 27, 2022',
            ),
            const SizedBox(height: 12),
            const _InfoRow(
              icon: Icons.access_time,
              text: '9.30 am',
            ),

            const SizedBox(height: 28),
            const Divider(),

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

            const Divider(height: 32),

            const Text(
              'Price Details',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            const _PriceRow(title: 'Hourly Rate', value: '\$18/hr'),
            const SizedBox(height: 16),
            const _PriceRow(title: 'Support Fee', value: '\$10'),

            const Divider(height: 36),

            const _PriceRow(
              title: 'Total Rate',
              value: '\$28',
              isTotal: true,
            ),

            const SizedBox(height: 18),

            const Text(
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
                color: textGray,
              ),
            ),

            const SizedBox(height: 32),

            SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: purple,
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
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoRow({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 22, color: ReviewConfirmPage.textGray),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: ReviewConfirmPage.textGray,
          ),
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
                color: ReviewConfirmPage.textGray,
              ),
            ),
          ),
          TextButton(
            onPressed: onTap,
            child: Text(
              actionText,
              style: const TextStyle(
                color: ReviewConfirmPage.purple,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
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
      color: isTotal ? Colors.black : ReviewConfirmPage.textGray,
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