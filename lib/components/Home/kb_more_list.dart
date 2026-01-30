import 'package:flutter/material.dart';

class KbMoreList extends StatefulWidget {
  const KbMoreList({super.key});

  @override
  KbMoreListState createState() => KbMoreListState();
}

class KbMoreListState extends State<KbMoreList> {
  @override
  Widget build(BuildContext context) {
    // 必须是Sliver家族的组件
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),

      itemBuilder: (BuildContext context, int index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.blue,
          child: Text('商品', style: TextStyle(color: Colors.white)),
        );
      },
    );
  }
}
