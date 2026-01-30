class BannerItem {
  String id;
  String imgUrl;

  BannerItem({required this.id, required this.imgUrl});
  // 扩展一个工厂函数 一般用 factory 来声明 一般用来创建实例对象
  factory BannerItem.fromJson(Map<String, dynamic> json) {
    return BannerItem(id: json['id'] ?? "", imgUrl: json['imgUrl'] ?? "");
  }
}

// 轮播图的具体类型
// flutter中没有隐式转化

// 根据 json 编写 class 对象和工厂转换函数CategoryItem
class CategoryItem {
  final String id;
  final String name;
  final String picture;
  final List<CategoryItem>? children;

  CategoryItem({
    required this.id,
    required this.name,
    required this.picture,
    this.children,
  });

  factory CategoryItem.fromJson(Map<String, dynamic> json) {
    return CategoryItem(
      id: json['id'] ?? "",
      name: json['name'] ?? "",
      picture: json['picture'] ?? "",
      children: json['children'] != null
          ? (json['children'] as List)
                .map(
                  (item) => CategoryItem.fromJson(item as Map<String, dynamic>),
                )
                .toList()
          : null,
    );
  }
}
