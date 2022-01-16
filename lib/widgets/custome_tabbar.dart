import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const home = Icon(
  Icons.home_outlined,
  size: 35.0,
  color: Colors.black
);

const fev = Icon(
  Icons.favorite_outline,
  size: 35.0,
  color: Colors.black45,
);

const cart = Icon(
  Icons.shopping_cart_outlined,
  size: 35.0,
  color: Colors.black45,
);

const user = Icon(
  Icons.verified_user_outlined,
  size: 35.0,
  color: Colors.black45,
);

class BlurredTabBar extends StatelessWidget {
  const BlurredTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomTabBar(
          buttons: [
            IconButton(
              icon: home,
              onPressed: () {
                // implement me
                // testIt();
              },
            ),
            IconButton(
              icon: fev,
              onPressed: () {
                // implement me
                // doThis();
              },
            ),
            IconButton(
              icon: cart,
              onPressed: () {
                // testIt2();
              },
            ),

             IconButton(
              icon: user,
              onPressed: () {
                // testIt2();
              },
            )
          ],
        )
      ],
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final List<IconButton> buttons;

  const CustomTabBar({Key? key, required this.buttons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ClipRect(
        child: Container(
          height: 80,
          color: Colors.white.withOpacity(0.4),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: buttons,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
