import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildUserTile("Wsam Gamal", "Wisso", "images/wsam.jpg", "Follow back"),
            _buildUserTile("Ahmed-Elmeky, who you might know, is on Instagram", "", "images/santa.jpg", "Follow", fontSize: 13),
            _buildUserTile("Altayib , who you might know, is on Instagram", "", "images/pandy.jpg", "Follow", fontSize: 13),
            _buildUserTile("Salah", "Slo7lo7", "images/Salah.jpg", "Follow back"),
            _buildUserTile("Mohammed fatih , who you might know, is on Instagram", "", "images/Afsa.jpg", "Follow", fontSize: 13),
            _buildUserTile("AbdulGhani , who you might know, is on Instagram", "", "images/abdulghani.jpg", "Follow", fontSize: 13),
            _buildDivider("Suggestions for you", fontSize: 20),
            _buildUserTile("Salah", "Slo7lo7", "images/Salah.jpg", "Follow"),
            _buildUserTile("Wsam", "Wisso", "images/wsam.jpg", "Follow"),
            _buildUserTile("Mohammed", "Afsaa", "images/Afsa.jpg", "Follow"),
            _buildUserTile("Altayib", "Pandyy", "images/pandy.jpg", "Follow"),
            _buildUserTile("Ahmed", "Santa", "images/santa.jpg", "Follow"),
            _buildUserTile("Abdulghani", "GonGon", "images/abdulghani.jpg", "Follow"),
          ],
        ),
      ),
    );
  }

  Widget _buildUserTile(String name, String subtitle, String imagePath, String buttonLabel, {double fontSize = 14}) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: fontSize),
      ),
      subtitle: subtitle.isNotEmpty
          ? Text(
              subtitle,
              style: TextStyle(color: Colors.grey),
            )
          : null,
      trailing: ElevatedButton(
        onPressed: () {},
        child: Text(buttonLabel),
      ),
    );
  }

  Widget _buildDivider(String text, {double fontSize = 14}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
