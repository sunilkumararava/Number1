import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vidflix/constant/constant.dart';
import 'package:vidflix/pages/category/more_list.dart';
import 'package:vidflix/pages/category/production_studio_list.dart';
import 'package:vidflix/pages/home/home_component/best_of_kids.dart';
import 'package:vidflix/pages/home/home_component/main_slider.dart';
import 'package:vidflix/pages/home/home_component/multiplex_movies.dart';
import 'package:vidflix/pages/home/home_component/popular_movies.dart';
import 'package:vidflix/pages/home/home_component/special_latest_movies.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Action',
          style: headingStyle,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          MainSlider(),
          heightSpace,
          ProductionStudioList(),
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('New Movies', style: headingStyle,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MoreList()));
                  },
                  child: Text('MORE', style: linkStyle),
                ),
              ],
            ),
          ),
          SpecialLatestMoviesList(),
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Hit Movies', style: headingStyle,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MoreList()));
                  },
                  child: Text('MORE', style: linkStyle),
                ),
              ],
            ),
          ),
          MultiPlexMoviesList(),
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Popular Movies', style: headingStyle,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MoreList()));
                  },
                  child: Text('MORE', style: linkStyle),
                ),
              ],
            ),
          ),
          PopularMoviesList(),
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Trending', style: headingStyle,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, PageTransition(type: PageTransitionType.downToUp, child: MoreList()));
                  },
                  child: Text('MORE', style: linkStyle),
                ),
              ],
            ),
          ),
          BestOfKidsList(),
          heightSpace,
        ],
      ),
    );
  }
}
