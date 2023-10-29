import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OptionsMenuCard extends StatelessWidget {
  const OptionsMenuCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
              onTap: () {
                Fluttertoast.showToast(
                    msg: 'Clicked!', toastLength: Toast.LENGTH_SHORT);
              },
              child: const Column(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Icon(Icons.ad_units_sharp)),
                  SizedBox(height: 5),
                  Text('my services')
                ],
              )),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(
                  msg: 'Clicked!', toastLength: Toast.LENGTH_SHORT);
            },
            child: const Column(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.notifications_none)),
                SizedBox(height: 5),
                Text('notifications')
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Fluttertoast.showToast(
                  msg: 'Clicked!', toastLength: Toast.LENGTH_SHORT);
            },
            child: const Column(
              children: [
                CircleAvatar(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                    child: Icon(Icons.settings)),
                SizedBox(height: 5),
                Text('settings')
              ],
            ),
          )
        ],
      ),
    );
  }
}
