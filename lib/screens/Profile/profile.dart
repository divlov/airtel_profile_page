import 'package:airtel_profile_page_flutter/widgets/account_profile_card.dart';
import 'package:airtel_profile_page_flutter/widgets/options_list.dart';
import 'package:airtel_profile_page_flutter/widgets/options_menu.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('account', style: Theme.of(context).textTheme.titleLarge),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {},
        ),
      ),
      body: const SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Column(
              children: [
                AccountProfileCard(),
                SizedBox(height: 20),
                OptionsMenuCard(),
                SizedBox(height: 20),
                OptionsList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
