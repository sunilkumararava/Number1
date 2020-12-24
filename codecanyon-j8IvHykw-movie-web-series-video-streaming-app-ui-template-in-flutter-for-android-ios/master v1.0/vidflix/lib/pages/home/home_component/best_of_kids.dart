import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vidflix/pages/video_page/video_page.dart';

class BestOfKidsList extends StatefulWidget {
  @override
  _BestOfKidsListState createState() =>
      _BestOfKidsListState();
}

class _BestOfKidsListState extends State<BestOfKidsList> {
  final moviesList = [
    {
      'image': 'assets/best_of_kids/best_of_kids_1.jpg',
    },
    {
      'image': 'assets/best_of_kids/best_of_kids_2.jpg',
    },
    {
      'image': 'assets/best_of_kids/best_of_kids_3.jpg',
    },
    {
      'image': 'assets/best_of_kids/best_of_kids_4.jpg',
    },
    {
      'image': 'assets/best_of_kids/best_of_kids_5.jpg',
    },
    {
      'image': 'assets/best_of_kids/best_of_kids_6.jpg',
    }
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 130.0,
      child: ListView.builder(
        itemCount: moviesList.length,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final item = moviesList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: VideoPage()));
            },
            child: Container(
              width: 100.0,
              margin: EdgeInsets.only(
                left: 10.0,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item['image']),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
