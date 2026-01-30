import 'package:flutter/material.dart';
import 'package:kayb_shop/pages/Login/index.dart';
import 'package:kayb_shop/pages/Main/index.dart';

// 返回App根级组件
Widget getRootWindet() {
  return MaterialApp(initialRoute: "/", routes: getRootRoutes());
}

// 返回该App的路由配置
Map<String, Widget Function(BuildContext)> getRootRoutes() {
  return {
    '/': (context) => MainPage(), //主页路由
    "/login": (context) => LoginPage(), //登录路由
  };
}
