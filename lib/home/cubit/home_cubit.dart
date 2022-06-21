import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  @override
  Future<void> close() {
    print('------------------------------------------');
    print('Cubit closed');
    print('------------------------------------------');
    return super.close();
  }

  void increment() {
    emit(HomeState(value: state.value + 1));
  }
}
