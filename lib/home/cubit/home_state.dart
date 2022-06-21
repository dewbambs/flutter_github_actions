part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({this.value = 0});

  final int value;

  @override
  List<Object?> get props => [value];
}
