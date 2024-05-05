// ignore_for_file: must_be_immutable

import 'package:cc/Screens/feedbackscreen.dart';
import 'package:cc/Screens/helpcenterscreen.dart';
import 'package:flutter/material.dart';

class NavigationMenuDrawerItem extends StatelessWidget {
  TextEditingController toggleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Profile Section
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage(
                          'assets/images/prof.png'), // Replace with your image path
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      margin: EdgeInsets.only(left: 12, top: 4, bottom: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Ashfak Sayem",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              "ashfaksayem@gmail.com",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.normal),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Help Center Section
              Container(
                margin: EdgeInsets.only(top: 32),
                padding:
                    EdgeInsets.only(left: 12, top: 13, right: 12, bottom: 13),
                decoration: BoxDecoration(
                  color: Colors.blue[700],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.help_outline,
                      size: 24,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6, top: 1, bottom: 2),
                      child: Text(
                        "Help Center",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Spacer(),
                    // You can add your own onPressed logic here
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => HelpCenterScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue[100],
                        padding: EdgeInsets.all(14),
                      ),
                      child: Text("2"),
                    ),
                  ],
                ),
              ),
              // Feedback Section
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(left: 12, top: 21, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.feedback,
                        size: 24,
                        color: Colors.blueGrey[700],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 6, top: 1, bottom: 2),
                        child: Text(
                          "Feedback",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blueGrey[700]),
                        ),
                      ),
                      Spacer(),
                      // You can add your own onPressed logic here
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to the FeedbackScreen
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => FeedbackScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[200],
                          padding: EdgeInsets.all(14),
                        ),
                        child: Text("1"),
                      ),
                    ],
                  ),
                ),
              ),
              // ... Rest of the code remains unchanged
            ],
          ),
        ),
      ),
    );
  }
}
