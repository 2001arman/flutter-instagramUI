import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/constans.dart';

class AvatarStory extends StatelessWidget {
  const AvatarStory({Key? key, required this.imageUrl, required this.nama})
      : super(key: key);

  final String imageUrl, nama;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: [kRedColor, kyellowColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
        Text(
          nama,
          style: TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}
