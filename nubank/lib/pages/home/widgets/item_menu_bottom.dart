import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  const ItemMenuBottom({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon),
              Text(text),
            ],
          ),
        ),
        width: 87,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.white24,
        ),
      ),
    );
  }
}
