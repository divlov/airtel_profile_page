import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OptionListTile extends StatelessWidget {
  final String title;
  final IconData iconData;

  const OptionListTile({super.key,required this.title,required this.iconData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Fluttertoast.showToast(msg: 'Clicked!',toastLength: Toast.LENGTH_SHORT);
      },
      child:  ListTile(leading: CircleAvatar(child: Icon(iconData),),
        title: Text(title,style: const TextStyle(fontWeight: FontWeight.bold),),trailing: const Icon(Icons.chevron_right),),
    );
  }
}
