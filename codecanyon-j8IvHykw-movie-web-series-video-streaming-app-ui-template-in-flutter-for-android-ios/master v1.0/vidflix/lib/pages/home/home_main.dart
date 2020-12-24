import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vidflix/constant/constant.dart';
import 'package:vidflix/pages/category/more_list.dart';
import 'package:vidflix/pages/home/home_component/best_of_kids.dart';
import 'package:vidflix/pages/home/home_component/explore_by_genre.dart';
import 'package:vidflix/pages/home/home_component/main_slider.dart';
import 'package:vidflix/pages/home/home_component/multiplex_movies.dart';
import 'package:vidflix/pages/home/home_component/popular_movies.dart';
import 'package:vidflix/pages/home/home_component/special_latest_movies.dart';
import 'package:vidflix/pages/notification.dart';

class HomeMain extends StatefulWidget {
  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Text(
          'VidFlix',
          style: headingStyle,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications, color: whiteColor),
            onPressed: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.size, alignment: Alignment.bottomCenter, child: Notifications()));
            },
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          MainSlider(),
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Text('Explore by Genre', style: headingStyle,),
          ),
          ExploreByGernre(),
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('Specials & Latest Movies', style: headingStyle,),
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
                Text('Multiplex Movies', style: headingStyle,),
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
                Text('Best of Kids', style: headingStyle,),
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
