import 'package:flutter/material.dart';
import 'package:flutter_instagram_ui/container_icon.dart';

class KontenPost extends StatelessWidget {
  const KontenPost(
      {Key? key,
      required this.avatarUrl,
      required this.kontenUrl,
      required this.nama,
      required this.caption})
      : super(key: key);

  final String avatarUrl, kontenUrl, nama, caption;

  @override
  Widget build(BuildContext context) {
    double lebarLayar = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(avatarUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Text(
                  nama,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                ContainerIcon(imageUrl: "assets/more.png"),
                SizedBox(width: 10),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: lebarLayar,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(kontenUrl),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                ContainerIcon(imageUrl: "assets/heart.png"),
                SizedBox(width: 15),
                ContainerIcon(imageUrl: "assets/comment.png"),
                SizedBox(width: 15),
                ContainerIcon(imageUrl: "assets/share.png"),
                Spacer(),
                ContainerIcon(imageUrl: "assets/Bookmark.png"),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 15, top: 5, bottom: 5),
            child: Text(
              "100 Likes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text: nama,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: " $caption",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/arman.jpeg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Text(
                  "Tambahkan komentar...",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
