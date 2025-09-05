import 'package:flutter/material.dart';
import 'package:login_screen/config.dart';

class LayerOne extends StatelessWidget {
  const LayerOne({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 650,
      decoration: BoxDecoration(
        color: layerOneBg,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60.0)),
      ),
    );
  }
}
