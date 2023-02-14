import 'package:dio/dio.dart';

final dio = Dio();

void getHttp() async {
  final response = await dio.get('https://v1.hitokoto.cn');
  print(response);
}