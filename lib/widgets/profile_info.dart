import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  Widget _card({
    required String title,
    required String value,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF6750A4).withValues(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _photo() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Image.asset(
        'assets/images/profile_photo.png',
        width: 138,
        height: 176,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _profileText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dianne Russell',
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Plumber',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF625B71),
          ),
        ),
        const Spacer(),
        Row(
          children: [
            _card(title: 'Rating', value: '4.5'),
            const SizedBox(width: 8),
            _card(title: 'Projects', value: '50'),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 320) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(child: _photo()),
              const SizedBox(height: 16),
              SizedBox(
                height: 116,
                child: _profileText(),
              ),
            ],
          );
        }

        return SizedBox(
          height: 176,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _photo(),
              const SizedBox(width: 12),
              Expanded(
                child: _profileText(),
              ),
            ],
          ),
        );
      },
    );
  }
}
/*import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  Widget _card({
    required String title,
    required String value,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        decoration: BoxDecoration(
          color: const Color(0xFF6750A4).withOpacity(0.05),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SizedBox(
          width: 68,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 186,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/profile_photo.png',
              width: 138,
              height: 186,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dianne Russell',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Plumber',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF625B71),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    _card(title: 'Rating', value: '4.5'),
                    const SizedBox(width: 8),
                    _card(title: 'Projects', value: '50'),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/