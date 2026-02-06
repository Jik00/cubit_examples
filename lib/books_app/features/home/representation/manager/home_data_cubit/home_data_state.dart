part of 'home_data_cubit.dart';

sealed class HomeDataState extends Equatable {
  const HomeDataState();

  @override
  List<Object> get props => [];
}

final class HomeDataInitial extends HomeDataState {}

final class HomeDataLoading extends HomeDataState {}

final class HomeDataSuccess extends HomeDataState {
  final List<BookModel> books;

  const HomeDataSuccess({required this.books});

  @override
  List<Object> get props => [books];
  
}

final class HomeDataFailure extends HomeDataState {
  final String message;

  const HomeDataFailure({required this.message});

    @override
  List<Object> get props => [message];

}
