import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vidflix/constant/constant.dart';
import 'package:vidflix/pages/category/more_list.dart';
import 'package:vidflix/pages/home/home_component/popular_movies.dart';
import 'package:vidflix/pages/video_page/episodes.dart';
import 'package:vidflix/pages/video_page/image_section.dart';
import 'package:vidflix/pages/video_page/title_description.dart';

class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Web Series',
          style: headingStyle,
        ),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ImageSection(),
          heightSpace,
          TitleDescription(),
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Text('Episodes', style: headingStyle,),
          ),
          EpisodesList(),
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text('You May Also Like', style: headingStyle,),
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
        ],
      ),
    );
  }
}
