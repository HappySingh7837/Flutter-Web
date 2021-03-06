import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website_prac/widgets/centred_view.dart';
import 'package:website_prac/widgets/nav_drawer/nav_drawer.dart';
import 'package:website_prac/widgets/navigation_bar/nav_bar.dart';

import 'home_content_desktop.dart';
import 'home_content_mobile.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context,sizinginfo)=>Scaffold(
        drawer: sizinginfo.isMobile?NavigationDrawer():null,
      backgroundColor: Colors.white,
      body: CentredView(
        child: Column(
          children: <Widget>[
            NavigationBar(),
            Expanded(
              child: ScreenTypeLayout(
                mobile: HomeContentMobile(),
                desktop: HomeContentDesktop(),
              ),
            )
          ],
        ),
      ),
     )
    );
  }
}