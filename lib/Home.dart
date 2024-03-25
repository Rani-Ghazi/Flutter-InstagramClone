import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  final String name;
  final String profilePhoto;
  final String postPhoto;

  Post(this.name, this.profilePhoto, this.postPhoto);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeader(),
        _buildPostImage(),
        _buildActions(),
        _buildLikes(),
        _buildTimestamp(),
        SizedBox(height: 20),
      ],
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(profilePhoto),
              ),
              SizedBox(width: 5.0),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
    );
  }

  Widget _buildPostImage() {
    return Container(
      child: Image.asset(
        postPhoto,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildActions() {
    return Padding(
      padding: EdgeInsets.all(7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
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
                  FontAwesomeIcons.comment,
                ),
              ),
              SizedBox(width: 4.0),
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.telegramPlane),
              ),
            ],
          ),
          Icon(FontAwesomeIcons.bookmark),
        ],
      ),
    );
  }

  Widget _buildLikes() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 10),
      child: Text(
        "Liked by Algemri.xo and 40,444 others",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildTimestamp() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "20 Minutes Ago",
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
