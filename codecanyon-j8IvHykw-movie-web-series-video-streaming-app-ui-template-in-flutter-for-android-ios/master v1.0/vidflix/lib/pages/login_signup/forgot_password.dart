import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:vidflix/constant/constant.dart';
import 'package:vidflix/pages/home/home.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bg.jpg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(1.0),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
              body: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        top: fixPadding * 2, left: fixPadding * 2),
                    child: Text(
                      'Lost password?',
                      style: loginBigTextStyle,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: fixPadding * 2),
                    child: Text(
                      'Don\'t worry we are here',
                      style: thickStyle,
                    ),
                  ),
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  Padding(
                    padding: EdgeInsets.only(
                        right: fixPadding * 2, left: fixPadding * 2),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200].withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: TextField(
                        style: headingStyle,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20.0),
                          hintText: 'Enter Registered Email',
                          hintStyle: headingStyle,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  heightSpace,
                  heightSpace,
                  Padding(
                    padding: EdgeInsets.only(
                        right: fixPadding * 2, left: fixPadding * 2),
                    child: SizedBox(
                      height: 50.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                            stops: [0.1, 0.5, 0.9],
                            colors: [
                              Colors.red[300].withOpacity(0.8),
                              Colors.red[500].withOpacity(0.8),
                              Colors.red[800].withOpacity(0.8),
                            ],
                          ),
                        ),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: Home()));
                          },
                          color: Colors.transparent,
                          child: Text(
                            'Reset password',
                            style: headingStyle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
