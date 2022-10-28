import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  final List tabBarOptions;
  const MyTabBar({Key? key, required this.tabBarOptions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,

            tabs: [
          Text(tabBarOptions[0][0]),
          Text(tabBarOptions[1][0]),
          Text(tabBarOptions[2][0])
        ]),
        Expanded(child: TabBarView(children: [
          tabBarOptions[0][1],
          tabBarOptions[1][1],
          tabBarOptions[2][1],
        ]))
      ],
    );
  }
}
