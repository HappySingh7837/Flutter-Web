import 'package:flutter/material.dart';
import 'package:website_prac/widgets/course_btn/Course_btn.dart';
import 'package:website_prac/widgets/ourse_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CourseDetails(),
        SizedBox(height: 70,),
        CallToAction('Join Course'),
      ],
    );
  }
}