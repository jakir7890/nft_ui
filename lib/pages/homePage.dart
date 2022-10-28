import 'package:flutter/material.dart';
import 'package:nft_ui/components/myAppBar.dart';
import 'package:nft_ui/tab/recent_tab.dart';
import 'package:nft_ui/tab/top_tap.dart';
import 'package:nft_ui/tab/trending_tab.dart';
import '../components/myTabBar.dart';
import '../components/myBottomBar.dart';
import '../theme/glass_effect.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List tabOptions = [
    ['Recent', RecentTab()],
    ['Top', TopTab()],
    ['Trending', TrendingTab()]
  ];
  int _currentIndex = 0;
  void _handleBottomIndexChange(int? index){
    setState(() {
      _currentIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabOptions.length,
        child: Scaffold(
          extendBody: true,
          backgroundColor: Colors.grey.shade400,
          body: ListView(
            children: [MyAppBar(onTap: () {}, title: 'Explores\nCollection'),
            SizedBox(
              height: 600,
              child: MyTabBar(tabBarOptions: tabOptions),
            ),
            ],
          ),
          bottomNavigationBar: GlassBox(child: MyBottom(index: _currentIndex, onTap: _handleBottomIndexChange)),
        ));
  }
}
