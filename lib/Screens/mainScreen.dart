import 'package:equipmentCatalogue/Widgets/searchView.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

import '../Widgets/categoryView.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  PageController controller = new PageController();

  List<GButton> tabs = new List();
  List<Widget> tabViews = new List();

  @override
  void initState() {
    super.initState();

    var padding = EdgeInsets.symmetric(horizontal: 18, vertical: 5);
    double gap = 10;

    tabs = [
      GButton(
        gap: gap,
        iconActiveColor: Colors.purple,
        iconColor: Colors.black,
        textColor: Colors.purple,
        backgroundColor: Colors.purple.withOpacity(.2),
        iconSize: 24,
        padding: padding,
        icon: LineIcons.home,
        // textStyle: t.textStyle,
        text: 'Category',
      ),
      GButton(
        gap: gap,
        iconActiveColor: Colors.amber[600],
        iconColor: Colors.black,
        textColor: Colors.amber[600],
        backgroundColor: Colors.amber[600].withOpacity(.2),
        iconSize: 24,
        padding: padding,
        icon: LineIcons.search,
        // textStyle: t.textStyle,
        text: 'Search',
      ),
      GButton(
        gap: gap,
        iconActiveColor: Colors.teal,
        iconColor: Colors.black,
        textColor: Colors.teal,
        backgroundColor: Colors.teal.withOpacity(.2),
        iconSize: 24,
        padding: padding,
        icon: LineIcons.user,
        // textStyle: t.textStyle,
        text: 'VideoPlayer',
      )
    ];

    tabViews = [
      CategoryView(),
      SearchView(),
      Container(
        color: Colors.teal,
        child: Center(
          child: Text("Video Player"),
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          brightness: Brightness.dark,
          title: Text(
            'Catalogue App',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: PageView.builder(
          onPageChanged: (page) {
            setState(() {
              selectedIndex = page;
            });
          },
          controller: controller,
          itemBuilder: (context, position) {
            return tabViews.elementAt(position);
          },
          itemCount: tabs.length, // Can be null
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: -10,
                      blurRadius: 60,
                      color: Colors.black.withOpacity(.20),
                      offset: Offset(0, 15))
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
              child: GNav(
                  tabs: tabs,
                  selectedIndex: selectedIndex,
                  onTabChange: (index) {
                    print(index);
                    setState(() {
                      selectedIndex = index;
                    });
                    controller.animateToPage(index,
                        duration: Duration(milliseconds: 300),
                        curve: Curves.linear);
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
