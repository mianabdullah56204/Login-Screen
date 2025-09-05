import 'package:flutter/material.dart';
import 'package:login_screen/config.dart';

class LayerThree extends StatelessWidget {
  const LayerThree({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isChecked = false;

    return SizedBox(
      width: size.width,
      height: 580,
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 55,
            top: 90,
            child: Text(
              'Username',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            left: 55,
            top: 125,
            child: SizedBox(
              width: 310,
              child: TextField(
                cursorColor: forgotPasswordText,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: forgotPasswordText),
                  ),
                  hintText: 'Enter User ID or Email',
                  hintStyle: TextStyle(color: hintText),
                ),
              ),
            ),
          ),
          Positioned(
            left: 55,
            top: 190,
            child: Text(
              'Password',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            left: 55,
            top: 225,
            child: SizedBox(
              width: 310,
              child: TextField(
                cursorColor: forgotPasswordText,
                obscureText: true,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: forgotPasswordText),
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: hintText),
                ),
              ),
            ),
          ),
          Positioned(
            right: 25,
            top: 290,
            child: Text(
              'Forgot Password',
              style: TextStyle(
                color: forgotPasswordText,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 361,
            child: Checkbox(
              checkColor: Colors.black,
              activeColor: checkbox,
              value: isChecked,
              onChanged: (bool? value) {
                isChecked = value!;
              },
            ),
          ),
          Positioned(
            left: 80,
            top: 373,
            child: Text(
              'Remember Me',
              style: TextStyle(
                color: forgotPasswordText,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 365,
            right: 25,
            child: Container(
              width: 100,
              height: 35,
              decoration: BoxDecoration(
                color: signInButton,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 430,
            left: 55,
            child: Container(height: 1, width: 300, color: inputBorder),
          ),
          Positioned(
            top: 470,
            left: 100,
            right: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: signInBox),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Image.asset(
                    'assets/icon_google.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                Text('or', style: TextStyle(fontSize: 18, color: inputBorder)),
                Container(
                  width: 60,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: signInBox),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Image.asset(
                    'assets/icon_apple.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
