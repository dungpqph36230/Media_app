import 'package:flutter/material.dart';

class MyTextBox extends StatelessWidget {
  final String text;
  final String sectionName;
  final void Function()? onPressed;
  const MyTextBox(
      {super.key,
      required this.text,
      required this.sectionName,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(8.0)),
      padding: const EdgeInsets.only(left: 10, bottom: 15),
      margin: const EdgeInsets.only(right: 20, left: 20, top: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sectionName,
              style: TextStyle(color: Colors.grey[600]),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(Icons.settings),
              color: Colors.grey[500],
            ),
          ],
        ),
        Text(text),
      ]),
    );
  }
}
