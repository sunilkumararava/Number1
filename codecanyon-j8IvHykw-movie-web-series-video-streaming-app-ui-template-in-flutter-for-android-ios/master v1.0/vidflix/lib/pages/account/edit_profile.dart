import 'package:flutter/material.dart';
import 'package:vidflix/constant/constant.dart';
import 'package:flutter/cupertino.dart';

class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String number = '9603456878';
  String email = 'test@abc.com';
  var phoneController = TextEditingController();
  var emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    phoneController.text = number;
    emailController.text = email;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    changePhoneNumber() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 210.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Change Phone Number",
                    style: TextStyle(
                      fontFamily: 'Mukta',
                      fontSize: 21.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    controller: phoneController,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mukta',
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Phone Number',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Mukta',
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontFamily: 'Mukta',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = phoneController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: redColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Okay',
                            style: TextStyle(
                              fontFamily: 'Mukta',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    changePassword() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 305.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Change Your Password",
                    style: TextStyle(
                      fontFamily: 'Mukta',
                      fontSize: 21.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mukta',
                    ),
                    decoration: InputDecoration(
                      hintText: 'Old Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Mukta',
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mukta',
                    ),
                    decoration: InputDecoration(
                      hintText: 'New Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Mukta',
                      ),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mukta',
                    ),
                    decoration: InputDecoration(
                      hintText: 'Confirm New Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Mukta',
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontFamily: 'Mukta',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: redColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Okay',
                            style: TextStyle(
                              fontFamily: 'Mukta',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    changeEmail() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 200.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Change Email",
                    style: TextStyle(
                      fontFamily: 'Mukta',
                      fontSize: 21.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Mukta',
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Mukta',
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontFamily: 'Mukta',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            email = emailController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: redColor,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Okay',
                            style: TextStyle(
                              fontFamily: 'Mukta',
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );
    }

    showUploadImageActionSheet() {
      return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
            title: Text('Choose Options',
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Mukta',
                    fontWeight: FontWeight.w500,
                    color: whiteColor)),
            message: Text('Your options are'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('Camera'),
                onPressed: () {},
              ),
              CupertinoActionSheetAction(
                child: Text('Choose form Gallery'),
                onPressed: () {},
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text('Cancel'),
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
            )),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        backgroundColor: blackColor,
        centerTitle: true,
        title: Text('Edit Profile', style: headingStyle),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(height: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  image: DecorationImage(
                    image: AssetImage('assets/user_profile/user.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    showUploadImageActionSheet();
                  },
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.black.withOpacity(0.5),
                    child: Icon(
                      Icons.add_a_photo,
                      color: whiteColor,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Allison Perry',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Mukta',
                  fontWeight: FontWeight.w500,
                  color: whiteColor,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: width - 30.0,
                margin: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    heightSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Mukta',
                                fontWeight: FontWeight.w500,
                                color: whiteColor,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '$number',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Mukta',
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            changePhoneNumber();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Email',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Mukta',
                                fontWeight: FontWeight.w500,
                                color: whiteColor,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '$email',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Mukta',
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            changeEmail();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Password',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'Mukta',
                                fontWeight: FontWeight.w500,
                                color: whiteColor,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              '******',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'Mukta',
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            changePassword();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
