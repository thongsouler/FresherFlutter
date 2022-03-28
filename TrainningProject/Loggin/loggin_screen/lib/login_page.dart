import 'package:flutter/material.dart';
import 'package:loggin_screen/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = FittedBox(
      child: Image.asset('assets/images/top_cover.png'),
      fit: BoxFit.fill,
    );

    final email = Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: '120C',
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ));

    final password = Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: TextFormField(
          autofocus: false,
          initialValue: 'matkhau',
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ));
    final textLogin = Container(
      child: const Text(
        'Đăng Nhập',
        style: TextStyle(
            fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
    final loginButton = Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(HomePage.tag);
        },
        color: Colors.lightBlueAccent,
        child: const Text('Đăng nhập', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: const Text(
        'Quên mật khẩu',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      // backgroundColor: Color(0x3C4457),
      backgroundColor: Colors.lightBlue,
      body: ListView(
        shrinkWrap: true,
        // padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: <Widget>[
          logo,
          SizedBox(height: 48.0),
          textLogin,
          SizedBox(height: 48.0),
          email,
          SizedBox(height: 8.0),
          password,
          SizedBox(height: 24.0),
          loginButton,
          forgotLabel
        ],
      ),
    );
  }
}
