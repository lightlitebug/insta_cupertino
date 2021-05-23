import 'package:flutter/cupertino.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          child: Text(
            'Feed',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (context) {
                return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: Text('Feed Detail'),
                  ),
                  child: CupertinoButton(
                    child: Center(
                      child: Text(
                        'Feed Detail',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(builder: (context) {
                          return CupertinoPageScaffold(
                            child: Center(
                              child: Text(
                                'This is Detail',
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ),
                          );
                        }),
                      );
                    },
                  ),
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
