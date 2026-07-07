import 'package:flutter/material.dart';

class ProfileDescription extends StatelessWidget {
  const ProfileDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Skill and Experience',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Dianne Russell is a skilled and experienced male plumber. He has extensive knowledge in installing and maintaining plumbing systems for potable water, sewage and drainage.'+
          'He is known for his attention to detail and ability to solve even the most complex plumbing issues. He is a reliable and trustworthy professional who always goes above and beyond'+ 
          'to ensure his clients are satisfied with his work',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF625B71),
            height: 20 / 14,
          ),
        ),
      ],
    );
  }
}
