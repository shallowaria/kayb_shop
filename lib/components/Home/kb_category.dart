import 'package:flutter/material.dart';

class KbCategory extends StatefulWidget {
  const KbCategory({super.key});

  @override
  KbCategoryState createState() => KbCategoryState();
}

class KbCategoryState extends State<KbCategory> {
  @override
  Widget build(BuildContext context) {
    // 返回一个横向滚动的组件
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            width: 80,
            height: 100,
            color: Colors.blue,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text('分类$index', style: TextStyle(color: Colors.white)),
          );
        },
      ),
    );
  }
}
