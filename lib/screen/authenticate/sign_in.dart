import 'package:flutter/material.dart';
import 'package:flutter_brew/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0,
        title: Text(
          'Sign in to Brew crew'
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: RaisedButton(
          onPressed: () async{
            dynamic result = await _auth.signInAnon();
            if (result == null) {
              print(
                  'Error singing in'
              );
            } else {

              print('signed in');
              print(result);
            }
          },
          child: Text('Sign in anon'),
        ),
      ),
    );
  }
}
