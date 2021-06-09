import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;

  TopBar({required this.title, required this.subtitle, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        width: double.infinity,
        color: color,
        child: Row(
          children: [
            CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1564172556663-2bef9580fc44?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80')),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    )),
                Text(subtitle,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    )),
              ],
            ),
          ],
        ));
  }
}
