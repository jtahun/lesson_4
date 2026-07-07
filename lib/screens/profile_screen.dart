import 'package:flutter/material.dart';
import 'package:lesson_4/widgets/profile_description.dart';
import 'package:lesson_4/widgets/profile_info.dart';
import 'package:lesson_4/widgets/profile_projects.dart';
import 'package:lesson_4/screens/review_confirm_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const Color purple = Color(0xFF6750A4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tasker Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE7E0EC),
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const ProfileInfo(),
              const SizedBox(height: 26),
              const ProfileDescription(),
              const SizedBox(height: 26),
              const ProfileProjects(),
              const SizedBox(height: 26),

              SizedBox(
                height: 44,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint('BUTTON PRESSED');

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const ReviewConfirmPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: const Text(
                    'Select Date and Time',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*import 'package:flutter/material.dart';
import 'package:lesson_4/widgets/profile_description.dart';
import 'package:lesson_4/widgets/profile_info.dart';
import 'package:lesson_4/widgets/profile_projects.dart';
import 'package:lesson_4/screens/review_confirm_page.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tasker Profile',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFE7E0EC),
        shadowColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProfileInfo(),
                const SizedBox(height: 26),
                ProfileDescription(),
                const SizedBox(height: 26),
                ProfileProjects(),
                const SizedBox(height: 26),
                /*MaterialButton(
                  onPressed: () {},
                  child: Text(
                    'Select Date and Time',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0xFF6750A4),
                  elevation: 0,
                  height: 44,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),*/
                MaterialButton(
                  onPressed: () {
                    debugPrint('BUTTON PRESSED');
                   Navigator.push(
                     context,
                     MaterialPageRoute(
                       builder: (_) => const ReviewConfirmPage(),
                     ),
                    );
                  },
                child: const Text(
                  'Select Date and Time',
                  style: TextStyle(color: Colors.white),
                 ),
                color: const Color(0xFF6750A4),
                elevation: 0,
                height: 44,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              ],
            )),
      ),
    );
  }
}
*/
