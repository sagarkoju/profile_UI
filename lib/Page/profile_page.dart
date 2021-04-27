import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profileui/Widget/buildbutton.dart';
import 'package:profileui/Widget/number_widget.dart';
import 'package:profileui/Widget/profile_widget.dart';
import 'package:profileui/modal/user.dart';
import 'package:profileui/utils/user_preference.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final user = UserPreference.myUser;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 40,
          ),
          ProfileWidget(
            imagePath: user.imagePath,
            onClicked: () {},
          ),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            user.name,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            user.text,
            style: TextStyle(
              color: Colors.red,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          )),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            user.email,
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )),
          SizedBox(
            height: 20,
          ),
          Center(child: buildButton()),
          SizedBox(
            height: 20,
          ),
          NumberWidget(),
          SizedBox(
            height: 20,
          ),
          buildAbout(user),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Contact Us',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.facebook,
                      ),
                      onPressed: () {
                        launch("https://www.facebook.com/sagar.koju");
                      },
                      color: Colors.blue,
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.googleDrive),
                      onPressed: () {
                        launch("https://drive.google.com/drive/u/0/my-drive");
                      },
                      color: Colors.blueAccent,
                    ),
                    IconButton(
                      icon: Icon(FontAwesomeIcons.instagram),
                      onPressed: () {
                        launch("https://www.instagram.com/?hl=ne");
                      },
                      color: Colors.red,
                    ),
                    IconButton(
                      icon: Icon(
                        FontAwesomeIcons.google,
                        color: Colors.blueGrey,
                      ),
                      onPressed: () {
                        launch(
                            "https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox");
                      },
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildButton() {
    return (ButtonWidget(
      text: "Login to My FaceBook",
      onclicked: () {},
    ));
  }

  Widget buildAbout(User user) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            user.about,
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
