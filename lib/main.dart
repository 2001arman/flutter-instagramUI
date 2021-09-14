import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/avatar_story.dart';
import 'package:flutter_instagram_ui/constans.dart';
import 'package:flutter_instagram_ui/container_icon.dart';
import 'package:flutter_instagram_ui/kontent_post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget myAppBar() {
    return Container(
      width: double.infinity,
      height: 50,
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            width: 104,
            margin: EdgeInsets.only(left: 35),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
              ),
            ),
          ),
          Spacer(),
          ContainerIcon(imageUrl: "assets/add.png"),
          SizedBox(width: 20),
          ContainerIcon(imageUrl: "assets/heart.png"),
          SizedBox(width: 20),
          ContainerIcon(imageUrl: "assets/messenger.png"),
          SizedBox(width: 10),
        ],
      ),
    );
  }

  Widget storyWidget() {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AvatarStory(
              imageUrl: "assets/images/arman.jpeg",
              nama: "Cerita anda",
            ),
            AvatarStory(
              imageUrl: "assets/images/arya.jpg",
              nama: "Arya",
            ),
            AvatarStory(
              imageUrl: "assets/images/ayudea.jpg",
              nama: "ayudea",
            ),
            AvatarStory(
              imageUrl: "assets/images/candra.jpg",
              nama: "candra",
            ),
            AvatarStory(
              imageUrl: "assets/images/david.jpg",
              nama: "david",
            ),
            AvatarStory(
              imageUrl: "assets/images/dimas.jpg",
              nama: "dimas",
            ),
            AvatarStory(
              imageUrl: "assets/images/dimtel.jpg",
              nama: "dimtel",
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomBar() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.infinity,
        height: 70,
        color: Colors.white,
        child: Column(
          children: [
            divider(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContainerIcon(imageUrl: "assets/Home.png"),
                ContainerIcon(imageUrl: "assets/Search.png"),
                ContainerIcon(imageUrl: "assets/Reels.png"),
                ContainerIcon(imageUrl: "assets/Shop.png"),
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/arman.jpeg"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget divider() {
    return Container(
      width: double.infinity,
      height: 1,
      color: kDividerColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              myAppBar(),
              Container(
                margin: EdgeInsets.only(top: 50),
                width: double.infinity,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      storyWidget(),
                      divider(),
                      KontenPost(
                        avatarUrl: "assets/images/arman.jpeg",
                        kontenUrl: "assets/images/konten1.jpeg",
                        nama: "armann_maulanaa",
                        caption: "Nakama...",
                      ),
                      KontenPost(
                        avatarUrl: "assets/images/dimtel.jpg",
                        kontenUrl: "assets/images/konten2.jpeg",
                        nama: "dimtel",
                        caption: "Yosh...",
                      ),
                      KontenPost(
                        avatarUrl: "assets/images/arman.jpeg",
                        kontenUrl: "assets/images/konten3.jpeg",
                        nama: "armann",
                        caption: "Mantap Jiwa",
                      ),
                      SizedBox(height: 100),
                    ],
                  ),
                ),
              ),
              bottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
