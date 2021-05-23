import 'package:flutter/cupertino.dart';

class CreatePostScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          'Create Post',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
