import 'package:flutter/cupertino.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
