import 'package:cubit_examples/books_app/features/home/data/models/book_model/book_model.dart';
import 'package:cubit_examples/books_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_data_state.dart';

class HomeDataCubit extends Cubit<HomeDataState> {
  HomeDataCubit({required this.homeRepo}) : super(HomeDataInitial());

  final HomeRepo homeRepo;

  Future<void> fetchHomeData() async {
    emit(HomeDataLoading());

    var result = await homeRepo.getHomeData();

    result.fold(
      (failure) => emit(HomeDataFailure(message: failure.message)),
      (books) => emit(
        HomeDataSuccess(books: books),
      ),
    );
  }
}
