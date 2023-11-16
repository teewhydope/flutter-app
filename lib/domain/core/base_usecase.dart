import 'package:dartz/dartz.dart';
import 'package:flutterassignment/domain/core/app_error.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppError, Type>> call(Params params);
}
