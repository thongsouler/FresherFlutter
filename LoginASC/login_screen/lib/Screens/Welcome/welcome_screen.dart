import 'package:flutter/material.dart';
import 'package:loggin_screen/constant.dart';

import '../../components/button.dart';
import 'components/background.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/kh.png'),
            Text(
              'Hệ thống ASC',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            RoundedButton(
              text: 'Dang nhap',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
