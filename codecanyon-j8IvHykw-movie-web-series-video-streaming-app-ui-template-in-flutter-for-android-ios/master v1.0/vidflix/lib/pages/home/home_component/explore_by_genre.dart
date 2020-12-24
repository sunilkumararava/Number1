import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vidflix/constant/constant.dart';
import 'package:vidflix/pages/category/category.dart';

class ExploreByGernre extends StatefulWidget {
  @override
  _ExploreByGernreState createState() => _ExploreByGernreState();
}

class _ExploreByGernreState extends State<ExploreByGernre> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          getGenreTile(Colors.blue, 'Action'),
          getGenreTile(Colors.red, 'Adventure'),
          getGenreTile(Colors.orange, 'Comedy'),
          getGenreTile(Colors.green, 'Drama'),
          getGenreTile(Colors.teal, 'Horror'),
        ],
      ),
    );
  }

  getGenreTile(Color genreTileColor, String title) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onPressed: () {
          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Category()));
        },
        color: genreTileColor,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: whiteColor,
            fontFamily: 'Mukta',
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
