import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagramclone/Activity.dart';
import 'package:instagramclone/Feeds.dart';
import 'package:instagramclone/Profile.dart';
import 'package:instagramclone/Search.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  void setBottomBarIndex(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: _getAppBar(),
      body: _getBody(),
      bottomNavigationBar: _getBottom(),
    );
  }

  Widget _getBody() {
    List<Widget> pages = [
      Feeds(),
      Search(),
      Center(
        child: Text(
          "Upload Page",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      Activity(),
      Profile(),
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }

  PreferredSizeWidget _getAppBar() {
    if (pageIndex == 0) {
      return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Instagram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 30),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.instagram),
          ),
        ],
      );
    }
    if (pageIndex == 1) {
      return AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                color: Colors.grey[850],
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }
    if (pageIndex == 3) {
      return AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Activity",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      );
    }
    if (pageIndex == 4) {
      return AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 15,
                  ),
                  SizedBox(width: 7),
                  Text(
                    "algemri.xo",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 20,
                  ),
                  SizedBox(width: 85),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_box_outlined,
                      size: 28,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu_outlined,
                      size: 28,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }
    return AppBar(
      backgroundColor: Colors.black,
    );
  }

  Widget _getBottom() {
    return BottomAppBar(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () => setBottomBarIndex(0),
            icon: Icon(
              Icons.home,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => setBottomBarIndex(1),
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => setBottomBarIndex(2),
            icon: Icon(
              Icons.add_box_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => setBottomBarIndex(3),
            icon: Icon(
              Icons.favorite_border_outlined,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () => setBottomBarIndex(4),
            icon: Icon(
              Icons.person,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
