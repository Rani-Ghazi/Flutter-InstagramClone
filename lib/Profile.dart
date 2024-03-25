import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              CircleAvatar(radius: 40, backgroundImage: AssetImage("images/me1.jpg")),
              SizedBox(width: 35),
              _buildUserStats("1", "Posts"),
              _buildUserStats("571", "Followers"),
              _buildUserStats("173", "Following"),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Rani | ヅ", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 5),
                Row(children: [Text("⚡")]),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                _buildOutlinedButton("Edit Profile"),
                SizedBox(width: 10),
                _buildOutlinedButton(Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white)),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stories(
              autoPlayDuration: Duration(seconds: 3),
              displayProgress: true,
              highLightColor: Colors.grey,
              circleRadius: 33,
              paddingColor: Colors.black,
              storyItemList: [
                StoryItem(name: "Collection", thumbnail: AssetImage("images/wsam.jpg"), stories: [
                  Scaffold(
                    body: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover, image: AssetImage("images/wsam.jpg")),
                      ),
                    ),
                  ),
                ]),
                StoryItem(name: "By Me", thumbnail: AssetImage("images/pandy.jpg"), stories: [
                  Scaffold(
                    body: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover, image: AssetImage("images/pandy.jpg")),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
          TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 1,
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.grid_on)),
              Tab(icon: Icon(Icons.person_pin_outlined, size: 27)),
            ],
            controller: _tabController,
          ),
          Flexible(
            child: TabBarView(
              children: [
                _buildTabView("Profile", "when you share photos and videos, they'll appear on your profile.", "Share your first photo or video"),
                _buildTabView("Photos and Videos of You", "when people tag you in photos and videos, they'll appear here.", ""),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserStats(String value, String label) {
    return Column(
      children: [
        Text(value, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Text(label),
      ],
    );
  }

  Widget _buildOutlinedButton(dynamic child) {
    return SizedBox(
      width: 260,
      child: OutlinedButton(
        onPressed: () {},
        child: child is Widget ? child : Text(child, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildTabView(String title, String subTitle, String buttonText) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(width: 1, color: Colors.white),
            ),
            child: Icon(Icons.add, color: Colors.white, size: 40),
          ),
          Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text(subTitle, style: TextStyle(fontSize: 14, color: Colors.grey)),
          SizedBox(height: 4),
          Text(buttonText, style: TextStyle(fontSize: 14, color: Colors.grey)),
          TextButton(onPressed: () {}, child: Text("Share your first photo or video")),
        ],
      ),
    );
  }
}
