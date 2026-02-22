// lib/core/failure/failure.dart

/// Base failure class
/// Pure Dart → SAFE to use in domain layer
abstract class Failure {
  final String message;

  const Failure([this.message = 'Something went wrong']);

  @override
  String toString() => message;
}

/// Network / API related failures
class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'Network error occurred']);
}

/// Server returned an error (500, 404, etc.)
class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error occurred']);
}

/// Cache / local storage failure
class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Cache error occurred']);
}

/// Unknown / unexpected failure
class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Unexpected error occurred']);
}