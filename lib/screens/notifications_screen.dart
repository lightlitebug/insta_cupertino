import 'package:flutter/cupertino.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          'Notifications',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
