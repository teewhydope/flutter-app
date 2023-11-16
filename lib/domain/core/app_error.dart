import 'package:equatable/equatable.dart';

class AppError extends Equatable {
  final String appError;

  const AppError(this.appError);

  @override
  List<Object?> get props => [appError];
}
