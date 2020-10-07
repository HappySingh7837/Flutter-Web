import 'package:flutter/material.dart';
import 'package:website_prac/widgets/Course_btn.dart';
import 'package:website_prac/widgets/centred_view.dart';
import 'package:website_prac/widgets/navigation_bar/nav_bar.dart';
import 'package:website_prac/widgets/ourse_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: CentredView(
         child:Column(
           children: [
             NavigationBar(),
             Expanded(
               child: Row(
                children: [
                  CourseDetails(),
                  Expanded(
                    child: Center(
                      child: CallToAction('Join Me'),
                    )
                  )
                ],                  
               )
              )
           ],
         ) 
        ),
      ),
    );
  }
}