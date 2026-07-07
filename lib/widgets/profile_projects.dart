import 'package:flutter/material.dart';

class ProfileProjects extends StatelessWidget {
  const ProfileProjects({Key? key}) : super(key: key);

  Widget _project({
    required String imagePath,
    required String title,
  }) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imagePath,
            height: 158,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Color(0xFF625B71),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Recent Projects'),
            TextButton(
              onPressed: () {},
              child: const Text(
                'View all',
                style: TextStyle(color: Color(0xFF6750A4)),
              ),
            ),
          ],
        ),
        Row(
          children: [
            _project(
              imagePath: 'assets/images/project_1.png',
              title: 'Local Restaurant Chain',
            ),
            const SizedBox(width: 16),
            _project(
              imagePath: 'assets/images/project_2.png',
              title: 'Bathroom Remodel',
            ),
          ],
        ),
      ],
    );
  }
}
