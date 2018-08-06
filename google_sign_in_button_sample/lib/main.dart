import 'package:flutter/material.dart';
import 'package:google_sign_in_button/google_sign_in_button.dart';

void main() => runApp(SampleApp());

class SampleApp extends StatefulWidget {
  @override
  SampleAppState createState() {
    return SampleAppState();
  }
}

class SampleAppState extends State<SampleApp> {
  bool _darkBackground;
  bool _darkButtonStyle;

  @override
  void initState() {
    super.initState();

    _darkBackground = true;
    _darkButtonStyle = false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _themeData,
      home: Scaffold(
        body: Builder(builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GoogleSignInButton(
                    brightness: _brightness,
                    onPressed: () {
                      print('Pressed button!');

                      const snackBar = SnackBar(
                        content: Text('Signing in …'),
                      );

                      Scaffold.of(context).showSnackBar(snackBar);
                    },
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      SwitchListTile(
                        title: Text('Dark background'),
                        value: _darkBackground,
                        onChanged: (value) {
                          setState(() {
                            _darkBackground = value;
                          });
                        },
                      ),
                      SwitchListTile(
                        title: Text('“Dark” button style'),
                        value: _darkButtonStyle,
                        onChanged: (value) {
                          setState(() {
                            _darkButtonStyle = value;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  ThemeData get _themeData {
    if (_darkBackground) {
      return ThemeData.dark();
    } else {
      return ThemeData.light();
    }
  }

  Brightness get _brightness {
    if (_darkButtonStyle) {
      return Brightness.dark;
    } else {
      return Brightness.light;
    }
  }
}
