import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:uas_project/theme/color.dart';
import 'package:uas_project/utils/data.dart';
import 'package:uas_project/widgets/feature_item.dart';

import 'mahasiswa_detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: appBarColor,
              pinned: true,
              snap: true,
              floating: true,
              title: getAppBar(),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => buildBody(),
                childCount: 1,
              ),
            )
          ],
        ));
  }

  Widget getAppBar() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5,
              ),
              Text("Mahasiswa Jurusan Ilmu Komputer",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  )),
            ],
          )),
        ],
      ),
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          getFeature(),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
        ]),
      ),
    );
  }

  int selectedCollection = 0;

  getFeature() {
    return CarouselSlider(
        options: CarouselOptions(
          height: 290,
          enlargeCenterPage: true,
          disableCenter: true,
          viewportFraction: .75,
        ),
        items: List.generate(
            features.length,
            (index) => FeatureItem(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MahasiswaDetailPage()));
                },
                data: features[index])));
  }
}
