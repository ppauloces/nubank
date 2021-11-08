import 'package:flutter/material.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;
  final bool showMenu;
  const PageViewApp(
      {Key? key,
      required this.showMenu,
      required this.top,
      required this.onChanged,
      required this.onPanUpdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeOut,
      top: top,
      height: MediaQuery.of(context).size.height * .45,
      left: 0,
      right: 0,
      child: GestureDetector(
        onPanUpdate: onPanUpdate,
        child: PageView(
          onPageChanged: onChanged,
          physics: showMenu
              ? const NeverScrollableScrollPhysics()
              : const BouncingScrollPhysics(),
          children: const [
            CardApp(),
            CardApp(),
            CardApp(),
          ],
        ),
      ),
    );
  }
}
