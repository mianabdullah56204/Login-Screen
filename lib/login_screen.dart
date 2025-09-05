import 'package:flutter/material.dart';
import 'package:login_screen/layers/layer_one.dart';
import 'package:login_screen/layers/layer_three.dart';
import 'package:login_screen/layers/layer_two.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/primaryBg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 180,
              left: 50,
              child: Container(
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(top: 260, child: LayerOne()),
            Positioned(left: 20, top: 280, child: LayerTwo()),
            Positioned(top: 240, child: LayerThree()),
          ],
        ),
      ),
    );
  }
}
