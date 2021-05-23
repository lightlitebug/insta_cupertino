import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:insta_cupertino/screens/screens.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;
  final List<Map<String, dynamic>> bottomTabs = [
    {
      'index': 0,
      'label': 'Feed',
      'icon': Icons.home,
      'key': GlobalKey<NavigatorState>(),
    },
    {
      'index': 1,
      'label': 'Search',
      'icon': Icons.search,
      'key': GlobalKey<NavigatorState>(),
    },
    {
      'index': 2,
      'label': 'Create',
      'icon': Icons.add,
      'key': GlobalKey<NavigatorState>(),
    },
    {
      'index': 3,
      'label': 'Notifications',
      'icon': Icons.notifications,
      'key': GlobalKey<NavigatorState>(),
    },
    {
      'index': 4,
      'label': 'Profile',
      'icon': Icons.account_circle_outlined,
      'key': GlobalKey<NavigatorState>(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        onTap: (int index) {
          if (selectedIndex == index) {
            final navigatorKey =
                bottomTabs[selectedIndex]['key'] as GlobalKey<NavigatorState>;

            navigatorKey.currentState!.popUntil((route) => route.isFirst);
          } else {
            selectedIndex = index;
          }
        },
        items: bottomTabs
            .map(
              (e) => BottomNavigationBarItem(
                label: e['label'],
                icon: Icon(e['icon']),
              ),
            )
            .toList(),
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          navigatorKey: bottomTabs[index]['key'],
          onGenerateRoute: (settings) => CupertinoPageRoute(
            settings: settings,
            builder: (context) => _showNestedScreen(
              bottomTabs[index]['label'],
            ),
          ),
        );
        // switch (index) {
        //   case 0:
        //     return FeedScreen();
        //   case 1:
        //     return SearchScreen();
        //   case 2:
        //     return CreatePostScreen();
        //   case 3:
        //     return NotificationsScreen();
        //   case 4:
        //     return ProfileScreen();
        //   default:
        //     return CupertinoPageScaffold(child: Container());
        // }
      },
    );
  }

  Widget _showNestedScreen(String label) {
    print('label: $label');

    switch (label) {
      case 'Feed':
        return FeedScreen();
      case 'Search':
        return SearchScreen();
      case 'Create':
        return CreatePostScreen();
      case 'Notifications':
        return NotificationsScreen();
      case 'Profile':
        return ProfileScreen();
      default:
        return CupertinoPageScaffold(child: Container());
    }
  }
}
