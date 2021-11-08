import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/item_menu_bottom.dart';
import 'package:nubank/pages/home/widgets/menu_app.dart';
import 'package:nubank/pages/home/widgets/my_app_bar.dart';
import 'package:nubank/pages/home/widgets/my_dots_app.dart';
import 'package:nubank/pages/home/widgets/page_view_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late bool _showMenu;
  late int _currentIndex;
  late double _yPosition;

  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
    _yPosition = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_yPosition == 0) {
      _yPosition = _screenHeight * .24;
    }

    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          MyAppBar(
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
                _yPosition =
                    _showMenu ? _screenHeight * .75 : _screenHeight * .24;
              });
            },
          ),
          MenuApp(
            top: _screenHeight * .20,
            showMenu: _showMenu,
          ),
          PageViewApp(
            showMenu: _showMenu,
            top: _yPosition,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            onPanUpdate: (details) {
              double positionBottomLimit = _screenHeight * .75;
              double positionTopLimit = _screenHeight * .24;
              double midlePosiiton = positionBottomLimit - positionTopLimit;
              midlePosiiton = midlePosiiton / 2;
              setState(() {
                _yPosition += details.delta.dy;

                _yPosition = _yPosition < positionTopLimit
                    ? positionTopLimit
                    : _yPosition;

                _yPosition = _yPosition > positionBottomLimit
                    ? positionBottomLimit
                    : _yPosition;

                if (_yPosition != positionBottomLimit && details.delta.dy > 0) {
                  _yPosition =
                      _yPosition > positionTopLimit + midlePosiiton - 50
                          ? positionBottomLimit
                          : _yPosition;
                }

                if (_yPosition != positionTopLimit && details.delta.dy < 0) {
                  _yPosition = _yPosition < positionBottomLimit - midlePosiiton
                      ? positionTopLimit
                      : _yPosition;
                }

                if (_yPosition == positionBottomLimit) {
                  _showMenu = true;
                } else if (_yPosition == positionTopLimit) {
                  _showMenu = false;
                }
              });
            },
          ),
          MyDotsApp(
            showMenu: _showMenu,
            top: _screenHeight * .70,
            currentIndex: _currentIndex,
          ),
          Positioned(
              bottom: 0 + MediaQuery.of(context).padding.bottom,
              left: 0,
              right: 0,
              height: _screenHeight * 0.13,
              child: Container(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'indicar amigos'),
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'indicar amigos'),
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'indicar amigos'),
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'indicar amigos'),
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'indicar amigos'),
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'indicar amigos'),
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'indicar amigos'),
                    ItemMenuBottom(
                        icon: Icons.person_add, text: 'indicar amigos'),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
