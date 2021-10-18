import 'package:flutter/material.dart';

class DetailText extends StatelessWidget {
  final String title;
  final String description;
  const DetailText({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(flex: 2, child: Text(description))
        ],
      ),
    );
  }
}
