import 'package:airtel_profile_page_flutter/helpers/user_data_helper.dart';
import 'package:flutter/material.dart';

class AccountProfileCard extends StatelessWidget {
  const AccountProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
        tileColor: Colors.red[900],
        leading:
            const Icon(Icons.account_circle, color: Colors.white, size: 60),
        title: Text(
          'Divlov Jaiswal',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: Colors.white,fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              UserDataHelper.getInstance().email,
              style: const TextStyle(color: Colors.white),
            ),
            const Text(
              '9876543210',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
