import 'package:flutter/material.dart';
import 'package:google_sign_in_button/google_sign_in_button.dart';

void main() => runApp(new SampleApp());

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Builder(builder: (context) {
          return Center(
            child: GoogleSignInButton(onPressed: () {
              print('Pressed button!');

              const snackBar = SnackBar(
                content: Text('Signing in …'),
              );

              Scaffold.of(context).showSnackBar(snackBar);
            }),
          );
        }),
      ),
    );
  }
}
