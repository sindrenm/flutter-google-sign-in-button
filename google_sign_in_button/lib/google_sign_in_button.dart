library google_sign_in_button;

import 'package:flutter/material.dart';

const _packageName = 'google_sign_in_button';

/// A Google Sign-in button, as per their branding guidelines.
///
/// See https://developers.google.com/identity/branding-guidelines.
class GoogleSignInButton extends StatelessWidget {
  final VoidCallback onPressed;

  GoogleSignInButton({
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: onPressed,
          splashColor: Colors.black12,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image.asset(
                  'assets/images/google_logo.png',
                  package: _packageName,
                ),
                SizedBox(width: 24.0),
                Text(
                  'Sign in with Google'.toUpperCase(),
                  style: TextStyle(
                    package: _packageName,
                    color: Colors.black.withOpacity(0.54),
                    fontSize: 14.0,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
