import 'package:carrot_market_ui/models/neighborhood.dart';
import 'package:carrot_market_ui/screens/components/appbar_preferred_size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'conponents/life_body.dart';
import 'conponents/life_header.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("동네생활"),
        actions: [
          IconButton(icon: Icon(CupertinoIcons.search), onPressed: () {}),
          IconButton(
              icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle),
              onPressed: () {}),
          IconButton(icon: Icon(CupertinoIcons.bell), onPressed: () {}),
        ],
        bottom: appBarBottomLine(),
      ),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            neighborhoodLifeList.length,
                (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: LifeBody(
                // 나중에 패딩으로 감싸서 온리 바텀 12.0
                neighborhoodLife: neighborhoodLifeList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
