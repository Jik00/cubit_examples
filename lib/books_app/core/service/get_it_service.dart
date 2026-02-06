import 'package:cubit_examples/books_app/core/service/api_service.dart';
import 'package:cubit_examples/books_app/features/home/data/repos/home_repo.dart';
import 'package:cubit_examples/books_app/features/home/domain/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance();

void setUpGetIt() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));

  getIt.registerSingleton<HomeRepo>(
    HomeRepoImpl(
      getIt<ApiService>(),
    ),
  );
}