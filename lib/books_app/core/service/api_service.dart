import 'package:cubit_examples/constants.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio;

  ApiService({required this.dio});

  // response = Map <String , dynamic>
Future<Response> get({required String endPoint}) async => await dio.get( kBaseUrl + endPoint);
}
