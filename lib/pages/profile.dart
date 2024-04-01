import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:instagram/widgets/info_item.dart';
import 'package:instagram/widgets/story_item.dart';
import 'package:instagram/widgets/tab_item.dart';

import 'package:instagram/widgets/profile_picture.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "mhd_iiqbal",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15, left: 15, top: 20),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Post", "130"),
                      InfoItem("Followers", "1M"),
                      InfoItem("Following", "0"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "mhd_iiqbal",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. ",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "#programmers",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Link goes here",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(width: 0.2, color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem(
                    title: "Story 1",
                    image: "https://picsum.photos/id/27/200/300",
                  ),
                  StoryItem(
                    title: "Story 2",
                    image: "https://picsum.photos/id/28/200/300",
                  ),
                  StoryItem(
                    title: "Story 3",
                    image: "https://picsum.photos/id/29/200/300",
                  ),
                  StoryItem(
                    title: "Story 4",
                    image: "https://picsum.photos/id/30/200/300",
                  ),
                  StoryItem(
                    title: "Story 5",
                    image: "https://picsum.photos/id/31/200/300",
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.video_collection, false),
              TabItem(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 130,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/${index + 10}/200/300",
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_creation_outlined),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
