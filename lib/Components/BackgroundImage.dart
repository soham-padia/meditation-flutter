import 'package:flutter/material.dart';

import 'CurveClipper.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: curveClipper(),
      child: Container(
        height: size.height * 0.65,
        color: Colors.blueGrey.withOpacity(0.8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Center(child: Image.asset('assets/images/yoga.png')),
        ),
      ),
    );
  }
}
