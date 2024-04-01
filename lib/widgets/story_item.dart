import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.grey[300],
                ),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.grey[300],
                    border: Border.all(color: Colors.white, width: 5),
                    image: DecorationImage(
                      image: NetworkImage(
                        image,
                      ),
                      fit: BoxFit.cover,
                    )),
              )
            ],
          ),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
