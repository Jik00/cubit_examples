abstract  class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  // factory ServerFailure.fromDioError(dynamic error) => ServerFailure(error.toString());
}