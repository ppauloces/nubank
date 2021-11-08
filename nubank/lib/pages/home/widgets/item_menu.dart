import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  const ItemMenu({Key? key, required this.icon, required this.text})
      : super(key: key);
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.8,
            color: Colors.white54,
          ),
          top: BorderSide(
            width: 0.8,
            color: Colors.white54,
          ),
        ),
      ),
      child: RaisedButton(
        color: Colors.purple[800],
        highlightColor: Colors.transparent,
        elevation: 0,
        disabledElevation: 0,
        focusElevation: 0,
        highlightElevation: 0,
        hoverElevation: 0,
        splashColor: Colors.purple[900],
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                const SizedBox(width: 15),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            ),
            const Icon(
              Icons.chevron_right,
              size: 14,
            )
          ],
        ),
      ),
    );
  }
}
