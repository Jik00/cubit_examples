import 'dart:developer';

import 'package:cubit_examples/books_app/core/errors/failure.dart';
import 'package:cubit_examples/books_app/features/home/data/models/book_model/book_model.dart';
import 'package:cubit_examples/books_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../core/service/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl({required this.apiService});

  @override
  Future<Either<Failure, List<BookModel>>> getHomeData() async {
    try {
      var response = await apiService.get(endPoint: 'recent');
      
      log(response.toString());

      return Right(
        response.data.map((e) => BookModel.fromJson(e)).toList(),
      );
    } on Exception catch (e) {
      return Left(
        ServerFailure(e.toString()),
      );
    }
  }
}
