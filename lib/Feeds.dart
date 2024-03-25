import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';


class Feeds extends StatefulWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  _FeedsState createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Your Stories widget implementation
            Stories(
              displayProgress: true,
              paddingColor: Colors.black,
              autoPlayDuration: Duration(seconds: 3),
              fullPagetitleStyle: TextStyle(fontSize: 15),
              fullpageThumbnailSize: 40,
              storyItemList: [
                // Story items
              ],
            ),
            // Call the posts method to display posts
            _buildPosts(),
          ],
        ),
      ),
    );
  }

  // Define the posts method to display posts
  Widget _buildPosts() {
    return Column(
      children: [
        // Call the posts widget constructor for each post
        posts("Algemri.xo", "images/me2.jpg", "images/me1.jpg"),
        posts("Wsam Jamal", "images/wsam.jpg", "images/wsam.jpg"),
        posts("Salah Anwar", "images/Salah.jpg", "images/Salah.jpg"),
        posts("Ahmed Elmeky", "images/santa.jpg", "images/santa.jpg"),
        posts("Ghazi Elgemri", "images/Ghazi.jpg", "images/Ghazi.jpg"),
        posts("Pandyy", "images/pandy.jpg", "images/pandy.jpg"),
        posts("AbdulGhani", "images/abdulghani.jpg", "images/abdulghani.jpg"),
        posts("Mohammed El-Fatih", "images/Afsa.jpg", "images/Afsa.jpg"),
      ],
    );
  }

  // Define the posts widget constructor
  Widget posts(String name, String profilePhoto, String postPhoto) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(profilePhoto),
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              )
            ],
          ),
        ),
        Container(
          child: Image.asset(
            postPhoto,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(7.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 28,
                    ),
                  ),
                  SizedBox(width: 4.0),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment,
                    ),
                  ),
                  SizedBox(width: 0.0),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.send),
                  ),
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Text(
                  "Liked by Algemri.xo and 40,444 others ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "20 Minutes Ago",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
            )
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
