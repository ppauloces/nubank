import 'package:flutter/material.dart';
import 'package:nubank/pages/home/widgets/item_menu.dart';

class MenuApp extends StatelessWidget {
  const MenuApp({Key? key, required this.top, required this.showMenu})
      : super(key: key);
  final double top;
  final bool showMenu;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 100),
        opacity: showMenu ? 1 : 0,
        child: Container(
          // color: Colors.red,
          height: MediaQuery.of(context).size.height * 0.55,
          child: Column(
            children: [
              Image.network(
                'https://webmobtuts.com/wp-content/uploads/2019/02/QR_code_for_mobile_English_Wikipedia.svg_.png',
                height: 100,
                color: Colors.white,
              ),
              const Text.rich(
                TextSpan(
                  text: 'Banco',
                  children: [
                    TextSpan(
                      text: '260 - Nu Pagamentos S.A',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 5),
              const Text.rich(
                TextSpan(
                  text: 'Agência ',
                  children: [
                    TextSpan(
                      text: '0001',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 5),
              const Text.rich(
                TextSpan(
                  text: 'Conta ',
                  children: [
                    TextSpan(
                      text: '0000000-0',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: TextStyle(fontSize: 12),
              ),
              const SizedBox(height: 25),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      const ItemMenu(
                        icon: Icons.info_outline,
                        text: 'Me ajuda',
                      ),
                      const ItemMenu(
                        icon: Icons.person_outline,
                        text: 'Perfil',
                      ),
                      const ItemMenu(
                        icon: Icons.settings,
                        text: 'Configurar conta',
                      ),
                      const ItemMenu(
                        icon: Icons.credit_card,
                        text: 'Configurar Cartão',
                      ),
                      const ItemMenu(
                        icon: Icons.store_mall_directory,
                        text: 'Pedir conta PJ',
                      ),
                      const ItemMenu(
                        icon: Icons.phone_android,
                        text: 'Configurações do app',
                      ),
                      const SizedBox(height: 25),
                      Container(
                        height: 35,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(width: 0.7, color: Colors.white54),
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
                          child: const Text(
                            "SAIR DO APP",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
