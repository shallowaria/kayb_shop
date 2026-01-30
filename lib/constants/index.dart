// 全局常量 static:变量会被存储在类本身中,内存中永远只有一份
class GlobalConstants {
  static const String BASE_URL = 'https://meikou-api.itheima.net'; // 基础地址
  static const int TIME_OUT = 10; // 超时时间
  static const String SUCCESS_CODE = '1'; // 成功状态
}

// 存放请求地址接口的常量

class HttpConstants {
  static const String BANNER_LIST = '/home/banner';
}
