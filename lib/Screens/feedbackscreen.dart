// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class FeedbackScreen extends StatelessWidget {
  TextEditingController inputFieldController = TextEditingController();
  TextEditingController textPlaceholderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[50], // Use basic color instead of ColorConstant.gray50
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.white, // Use basic color instead of ColorConstant.white
          leadingWidth: 40,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              onTapArrowleft(context);
            },
          ),
          centerTitle: true,
          title: Text("Feedback"),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.fromLTRB(16, 27, 16, 27),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Title",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  TextFormField(
                    focusNode: FocusNode(),
                    controller: inputFieldController,
                    decoration: InputDecoration(
                      hintText: "Enter Title",
                      contentPadding: EdgeInsets.only(top: 7),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Message",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
              TextFormField(
                focusNode: FocusNode(),
                controller: textPlaceholderController,
                decoration: InputDecoration(
                  hintText: "Write message...",
                  contentPadding: EdgeInsets.only(top: 6),
                  suffixIcon: Container(
                    margin: EdgeInsets.only(left: 30, top: 30, right: 7, bottom: 7),
                    child: Icon(Icons.edit),
                  ),
                ),
                textInputAction: TextInputAction.done,
                maxLines: 9,
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(14),
                  textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                child: Text("Give Feedback"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
