import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  const MyDotsApp(
      {Key? key,
      required this.currentIndex,
      required this.top,
      required this.showMenu})
      : super(key: key);

  final int currentIndex;
  final double top;
  final bool showMenu;

  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 200),
        opacity: showMenu ? 0 : 1,
        child: Row(
          children: [
            Container(
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                color: getColor(0),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                color: getColor(1),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              height: 7,
              width: 7,
              decoration: BoxDecoration(
                color: getColor(2),
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
