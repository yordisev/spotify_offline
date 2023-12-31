import 'package:flutter/material.dart';
import 'package:spotify/pages/home_page.dart';
import 'package:spotify/theme/colors.dart';

class RootApp extends StatefulWidget {
  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        HomePage(),
        Center(
          child: Text(
            "Library",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Search",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Setting",
            style: TextStyle(
                fontSize: 20, color: white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Icons.other_houses_rounded,
      Icons.book,
      Icons.search,
      Icons.settings,
    ];
    return Container(
      height: 80,
      decoration: BoxDecoration(color: black),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) {
              return IconButton(
                  icon: Icon(
                    items[index],
                    color: activeTab == index ? primary : white,
                    size: 35,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            })),
      ),
    );
  }
}
