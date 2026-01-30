import 'package:flutter/material.dart';
import 'package:kayb_shop/api/home.dart';
import 'package:kayb_shop/components/Home/kb_category.dart';
import 'package:kayb_shop/components/Home/kb_hot.dart';
import 'package:kayb_shop/components/Home/kb_more_list.dart';
import 'package:kayb_shop/components/Home/kb_slider.dart';
import 'package:kayb_shop/components/Home/kb_suggestion.dart';
import 'package:kayb_shop/viewmodels/home.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  List<CategoryItem> _categoryList = [];
  List<BannerItem> _bannerList = [
    // BannerItem(
    //   id: '1',
    //   imgUrl: 'https://seopic.699pic.com/photo/50075/6521.jpg_wh1200.jpg',
    // ),
    // BannerItem(
    //   id: '2',
    //   imgUrl: 'https://seopic.699pic.com/photo/50118/7084.jpg_wh1200.jpg',
    // ),
    // BannerItem(id: '3', imgUrl: 'https://p7.qhimg.com/t0190c170fcad30e29b.png'),
  ];

  // 获取滚动容器的内容
  List<Widget> _getScrollChildren() {
    return [
      // 包括普通 Winget 的 sliver 家族的组件
      SliverToBoxAdapter(child: KbSlider(bannerList: _bannerList)),
      //SliverGrid 和 SliverList只能纵向排列
      // 放置分类组件
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(child: KbCategory(categoryList: _categoryList)),

      // 放置推荐组件
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(child: KbSuggestion()),

      // ListView
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(child: KbHot()),
              SizedBox(width: 10),
              Expanded(child: KbHot()),
            ],
          ),
        ),
      ),
      SliverToBoxAdapter(child: SizedBox(height: 10)),
      KbMoreList(), // 无限滚动列表
    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getBannderList();
    _getCategoryList();
  }

  // 获取轮播图列表
  void _getBannderList() async {
    _bannerList = await getBannerListAPI();
    setState(() {});
  }

  // 获取分类列表
  void _getCategoryList() async {
    _categoryList = await getCategoryListAPI();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: _getScrollChildren());
  }
}
