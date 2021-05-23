import 'package:flutter/cupertino.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(
          'Search',
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }
}
