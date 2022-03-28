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
            filled: true,
            fillColor: Colors.grey,
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
            filled: true,
            fillColor: Colors.grey,
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
        color: Color.fromARGB(255, 60, 70, 199),
        child: const Text('Đăng nhập', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: const Text(
        'Quên mật khẩu',
        style: TextStyle(color: Colors.grey),
      ),
      onPressed: () {},
    );
    final helpRow = Column(children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/kh.png',
                ),
                Text('cat')
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/kh.png'),
                Text('cat')
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Image.asset('assets/images/kh.png'),
                Text('cat')
              ],
            ),
          ),
        ],
      ),
    ]);
    return Scaffold(
      // backgroundColor: Color(0x3C4457),
      backgroundColor: Color.fromARGB(31, 37, 37, 37),
      body: ListView(
        shrinkWrap: true,
        // padding: EdgeInsets.only(left: 24.0, right: 24.0),
        children: <Widget>[
          logo,
          SizedBox(height: 48.0),
          textLogin,
          SizedBox(height: 16.0),
          email,
          SizedBox(height: 12.0),
          password,
          // SizedBox(height: 12.0),
          loginButton,
          forgotLabel,
          helpRow,
        ],
      ),
    );
  }
}
