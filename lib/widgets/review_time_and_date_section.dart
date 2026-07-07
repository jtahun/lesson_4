import 'package:flutter/material.dart';

class ReviewTimeAndDateSection extends StatelessWidget {
  const ReviewTimeAndDateSection({super.key});

  static const Color _textGray = Color(0xFF625B71);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        _Header(),
        SizedBox(height: 8),
        _InfoRow(
          icon: Icons.calendar_month_outlined,
          text: 'Friday - May 27, 2022',
        ),
        SizedBox(height: 12),
        _InfoRow(
          icon: Icons.access_time,
          text: '9.30 am',
        ),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Expanded(
          child: Text(
            'Time and date',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        _TaskerAvatar(),
      ],
    );
  }
}

class _TaskerAvatar extends StatelessWidget {
  const _TaskerAvatar();

  @override
  Widget build(BuildContext context) {
    return Column(
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
            color: ReviewTimeAndDateSection._textGray,
          ),
        ),
      ],
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
        Icon(
          icon,
          size: 22,
          color: ReviewTimeAndDateSection._textGray,
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: ReviewTimeAndDateSection._textGray,
          ),
        ),
      ],
    );
  }
}