import 'package:flutter/material.dart';
import 'package:uas_project/theme/color.dart';
import 'package:uas_project/utils/data.dart';
import 'package:uas_project/widgets/custom_image.dart';
import 'package:uas_project/widgets/setting_box.dart';
import 'package:uas_project/widgets/setting_item.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({ Key? key }) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
   @override
  Widget build(BuildContext context) {
    return 
    CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: appBgColor,
            pinned: true,
            snap: true,
            floating: true,
            title: getHeader()
          ),
          SliverToBoxAdapter(
            child: getBody()
          )
        ],
      );
  }

  getHeader(){
    return
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Akun",
              style: TextStyle(color: textColor, fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      );
  }

  Widget getBody() {
    return 
    SingleChildScrollView(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Column(
        children: [
          Column(
            children: [
              CustomImage(
                profile["image"]!,
                width: 70, height: 70, radius: 20,
              ),
              SizedBox(height: 10,),
              Text(profile["name"]!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
            ],
          ),
          SizedBox(height: 20,),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: cardColor,
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
          ),

          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: cardColor,
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: cardColor,
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                SettingItem(title: "Log Out", 
                  leadingIcon: "assets/icons/logout.svg",
                  bgIconColor: darker, 
                  onTap: (){
                  },
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}