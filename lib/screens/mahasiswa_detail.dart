import 'package:flutter/material.dart';
import '../widgets/custom_image.dart';

class MahasiswaDetailPage extends StatefulWidget {
  const MahasiswaDetailPage({Key? key}) : super(key: key);

  @override
  State<MahasiswaDetailPage> createState() => _MahasiswaDetailPageState();
}

class _MahasiswaDetailPageState extends State<MahasiswaDetailPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: buildBody(),
    );
  }

  AppBar buildAppbar() {
    var textColor;
    return AppBar(
      title: Text(
        "Mahasiswa S1 Ilmu Komputer",
        style: TextStyle(color: textColor),
      ),
      iconTheme: IconThemeData(color: textColor),
    );
  }

  Widget buildBody() {
    var mahasiswa;
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: Column(children: [
        CustomImage(
          mahasiswa[0]["image"],
          radius: 10,
          width: double.infinity,
          height: 200,
        ),
        SizedBox(
          height: 20,
        ),
        getInfo(),
      ]),
    );
  }

  Widget getInfo() {
    var textColor;
    return Container(
        child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Course 1",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: textColor,
              ),
            ),
            BookmarkBox(
              onTap: () {},
            )
          ],
        )
      ],
    )
    );
  }

  BookmarkBox({required Null Function() onTap}) {}
}
