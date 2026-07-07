import 'package:flutter/material.dart';
import 'package:lesson_4/widgets/confirm_and_chat_button.dart';
import 'package:lesson_4/widgets/review_payment_section.dart';
import 'package:lesson_4/widgets/review_price_details.dart';
import 'package:lesson_4/widgets/review_time_and_date_section.dart';

class ReviewConfirmPage extends StatelessWidget {
  const ReviewConfirmPage({super.key});

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
      body: const SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ReviewTimeAndDateSection(),
            SizedBox(height: 28),
            Divider(),
            ReviewPaymentSection(),
            Divider(height: 32),
            ReviewPriceDetails(),
            SizedBox(height: 32),
            ConfirmAndChatButton(),
          ],
        ),
      ),
    );
  }
}