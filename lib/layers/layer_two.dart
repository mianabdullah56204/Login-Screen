import 'package:flutter/material.dart';
import 'package:login_screen/config.dart';

class LayerTwo extends StatelessWidget {
  const LayerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 580,
      decoration: BoxDecoration(
        color: layerTwoBg,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0)),
      ),
    );
  }
}
