import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<Incremented>(_mapIncrementedToState);
  }

  @override
  Future<void> close() {
    print('------------------------------------------');
    print('Bloc closed');
    print('------------------------------------------');
    return super.close();
  }

  Future<void> _mapIncrementedToState(Incremented event, Emitter emit) async {
    emit(CounterState(value: state.value + 1));
  }
}
