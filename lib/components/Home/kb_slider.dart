import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:kayb_shop/viewmodels/home.dart';

class KbSlider extends StatefulWidget {
  final List<BannerItem> bannerList;
  const KbSlider({super.key, required this.bannerList});

  @override
  KbSliderState createState() => KbSliderState();
}

class KbSliderState extends State<KbSlider> {
  Widget _getSlider() {
    // 获取屏幕宽度
    final double screenWidth = MediaQuery.of(context).size.width;
    // 返回轮播图插件
    // 根据数据渲染不同的轮播对象
    return CarouselSlider(
      items: List.generate(
        widget.bannerList.length,
        (int index) => Image.network(
          widget.bannerList[index].imgUrl, //父传子
          fit: BoxFit.cover,
          width: screenWidth,
        ),
      ),
      options: CarouselOptions(
        autoPlayInterval: Duration(seconds: 5),
        height: 300,
        viewportFraction: 1.0,
        autoPlay: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Stack -> 轮播图 搜索框 指示灯导航
    return Stack(children: [_getSlider()]);

    // return Container(
    //   height: 300,
    //   color: Colors.blue,
    //   alignment: Alignment.center,
    //   child: Text('轮播图', style: TextStyle(fontSize: 20, color: Colors.white)),
    // );
  }
}
