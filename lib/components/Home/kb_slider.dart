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
  final CarouselSliderController _controller =
      CarouselSliderController(); // 控制轮播图跳转的控制器
  int _currentIndex = 0;

  Widget _getSlider() {
    // 获取屏幕宽度
    final double screenWidth = MediaQuery.of(context).size.width;
    // 返回轮播图插件
    // 根据数据渲染不同的轮播对象
    return CarouselSlider(
      carouselController: _controller, // 绑定controller对象
      items: List.generate(
        widget.bannerList.length,
        (int index) => Image.network(
          widget.bannerList[index].imgUrl, //父传子
          fit: BoxFit.cover,
          width: screenWidth,
        ),
      ),
      options: CarouselOptions(
        // autoPlay: true,
        // autoPlayInterval: Duration(seconds: 5),
        height: 300,
        viewportFraction: 1.0,
        onPageChanged: (int index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }

  // 搜索框
  Widget _getSearch() {
    return Positioned(
      top: 10,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.all(10),

        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.4),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Text(
            "搜索...",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }

  // 返回指示灯导航部件
  Widget _getDots() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 10,
      child: SizedBox(
        height: 40,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.bannerList.length, (int index) {
            return GestureDetector(
              onTap: () {
                _controller.animateToPage(index);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                height: 6,
                width: index == _currentIndex ? 40 : 20,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: index == _currentIndex
                      ? Colors.white
                      : Color.fromRGBO(0, 0, 0, 0.3),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Stack -> 轮播图 搜索框 指示灯导航
    return Stack(children: [_getSlider(), _getSearch(), _getDots()]);

    // return Container(
    //   height: 300,
    //   color: Colors.blue,
    //   alignment: Alignment.center,
    //   child: Text('轮播图', style: TextStyle(fontSize: 20, color: Colors.white)),
    // );
  }
}
