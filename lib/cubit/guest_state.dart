part of 'guest_cubit.dart';

class GuestSearchState extends Equatable {
  final DomainError? error;
  final bool loading;
  final List<Guest> guests;
  final Guest? selectedGuest;

  const GuestSearchState({
    this.error,
    this.loading = false,
    this.guests = const [
      Guest(
        guid: 'guid',
        firstName: 'firstName',
        lastName: 'lastName',
        phoneNumber: 'phoneNumber',
        email: 'email',
        guestNotes: 'guestNotes',
        totalBookingCount: 2,
        guestTags: [],
      ),
    ],
    this.selectedGuest = const Guest(
      guid: 'guid',
      firstName: 'firstName',
      lastName: 'lastName',
      phoneNumber: 'phoneNumber',
      email: 'email',
      guestNotes: 'guestNotes',
      totalBookingCount: 2,
      guestTags: [],
    ),
  });

  GuestSearchState copyWith({
    DomainError? error,
    bool? loading,
    List<Guest>? guests,
    Guest? selectedGuest,
  }) {
    return GuestSearchState(
      error: error ?? this.error,
      loading: loading ?? this.loading,
      guests: guests ?? this.guests,
      selectedGuest: selectedGuest ?? this.selectedGuest,
    );
  }

  @override
  List<Object?> get props => [
        error,
        loading,
        guests,
        selectedGuest,
      ];
}

class DomainError extends Error {
  final String message;

  DomainError(this.message);
}
