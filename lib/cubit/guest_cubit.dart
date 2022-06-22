import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_github_actions/guests.dart';

part 'guest_state.dart';

class GuestCubit extends Cubit<GuestSearchState> {
  GuestCubit() : super(const GuestSearchState());

  void updateGuest(Guest guest) {
    var guests = state.guests;
    var finalGuests = <Guest>[];

    final index = guests
        .indexWhere((element) => element.guid == state.selectedGuest?.guid);
    if (!index.isNegative) {
      print('index: $index');
      // guests[index] = guest;
      finalGuests = [guest];
    }

    emit(state.copyWith(guests: finalGuests));
  }
}
