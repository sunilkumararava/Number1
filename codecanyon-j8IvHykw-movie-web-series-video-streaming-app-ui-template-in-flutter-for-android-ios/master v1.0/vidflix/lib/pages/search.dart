import 'package:flutter/material.dart';
import 'package:vidflix/constant/constant.dart';
import 'package:vidflix/pages/home/home_component/explore_by_genre.dart';
import 'package:vidflix/pages/home/home_component/special_latest_movies.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Text(
              'What\'d you like to watch today?',
              style: bigTextStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: fixPadding, left: fixPadding),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(25.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search for shows, series & movies',
                hintStyle: TextStyle(
                  fontSize: 12.0,
                  color: blackColor,
                ),
                prefixIcon: Icon(Icons.search, color: blackColor,),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Wrap(
              children: <Widget>[
                getSearchSuggestionTile('Comedy Movie'),
                getSearchSuggestionTile('Mystery'),
                getSearchSuggestionTile('Action'),
                getSearchSuggestionTile('Latest Movie'),
                getSearchSuggestionTile('Web Series'),
                getSearchSuggestionTile('New Web Series'),
                getSearchSuggestionTile('Drama'),
                getSearchSuggestionTile('Sport'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding, right: fixPadding, bottom: fixPadding),
            child: Text('Explore by Genre', style: headingStyle,),
          ),
          ExploreByGernre(),
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Text('Special for You', style: headingStyle,)
          ),
          SpecialLatestMoviesList(),
          heightSpace,
        ],
      ),
    );
  }
  getSearchSuggestionTile(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        onPressed: () {
        },
        color: Colors.grey[800],
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
