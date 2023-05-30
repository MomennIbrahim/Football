import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: 'https://api.football-data.org//v4//',
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(
      {
         required String url,
         Map<String, dynamic>? data,
         String lang = 'ar'
      }) async {

    dio.options.headers = {'X-Auth-Token': '02974092620b401597436ba5874d1022'};

    return await dio.get(url,
        queryParameters: {
          'api_key': '6b95535dcef0dd4e6401b7cf552c8865',
          'language': lang
        },
        data: data);
  }
}
