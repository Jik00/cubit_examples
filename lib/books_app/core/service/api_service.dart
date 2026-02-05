import 'package:cubit_examples/constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService(this._dio);

  // response = Map <String , dynamic>
Future<Response > get({required String endPoint}) async => await _dio.get( kBaseUrl + endPoint);
}
